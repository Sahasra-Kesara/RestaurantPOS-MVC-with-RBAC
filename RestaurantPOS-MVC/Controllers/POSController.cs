using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using RestaurantPOS_MVC.Data;
using RestaurantPOS_MVC.Models;
using System;
using System.Linq;
using System.Threading.Tasks;

[Authorize(Roles = "Cashier")]
public class POSController : Controller
{
    private readonly ApplicationDbContext _context;

    public POSController(ApplicationDbContext context)
    {
        _context = context;
    }

    // Display the menu
    public async Task<IActionResult> Index()
    {
        var items = await _context.Items.ToListAsync();
        return View(items);
    }

    // Add item to the cart
    public async Task<IActionResult> AddToCart(int itemId)
    {
        var item = await _context.Items.FindAsync(itemId);
        if (item == null)
        {
            return NotFound();
        }

        var order = await GetCurrentOrder();
        var orderItem = order.OrderItems.FirstOrDefault(oi => oi.ItemId == itemId);

        if (orderItem == null)
        {
            orderItem = new OrderItem { ItemId = itemId, Quantity = 1, TotalPrice = item.Price };
            order.OrderItems.Add(orderItem);
        }
        else
        {
            orderItem.Quantity++;
            orderItem.TotalPrice += item.Price;
        }

        await _context.SaveChangesAsync();
        return RedirectToAction(nameof(ViewCart));
    }

    // View the cart
    public async Task<IActionResult> ViewCart()
    {
        var order = await GetCurrentOrder();
        return View(order);
    }

    // Checkout the cart
    public async Task<IActionResult> Checkout()
    {
        var order = await GetCurrentOrder();
        order.IsPaid = true;

        var bill = new Bill
        {
            OrderId = order.OrderId,
            TotalAmount = order.OrderItems.Sum(oi => oi.TotalPrice),
            PaymentDate = DateTime.Now
        };

        _context.Bills.Add(bill);
        await _context.SaveChangesAsync();

        return View("Bill", bill);
    }

    // Update quantity of an item in the cart
    [HttpPost]
    public async Task<IActionResult> UpdateQuantity(int orderItemId, int quantity)
    {
        var orderItem = await _context.OrderItems.FindAsync(orderItemId);
        if (orderItem == null || quantity < 1)
        {
            return NotFound();
        }

        // Update quantity and recalculate the total price
        var item = await _context.Items.FindAsync(orderItem.ItemId);
        if (item != null)
        {
            orderItem.Quantity = quantity;
            orderItem.TotalPrice = quantity * item.Price;
            await _context.SaveChangesAsync();
        }

        return RedirectToAction(nameof(ViewCart));
    }

    // Remove an item from the cart
    [HttpPost]
    public async Task<IActionResult> DeleteFromCart(int orderItemId)
    {
        var orderItem = await _context.OrderItems.FindAsync(orderItemId);
        if (orderItem != null)
        {
            _context.OrderItems.Remove(orderItem);
            await _context.SaveChangesAsync();
        }

        return RedirectToAction(nameof(ViewCart));
    }


    // Get the current order (if exists)
    private async Task<Order> GetCurrentOrder()
    {
        var order = await _context.Orders
            .Include(o => o.OrderItems)
            .ThenInclude(oi => oi.Item)
            .FirstOrDefaultAsync(o => !o.IsPaid);

        if (order == null)
        {
            order = new Order { OrderDate = DateTime.Now, IsPaid = false };
            _context.Orders.Add(order);
            await _context.SaveChangesAsync();
        }

        return order;
    }
}