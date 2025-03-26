using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using RestaurantPOS_MVC.Data;
using RestaurantPOS_MVC.Models;
using System;
using System.Linq;
using System.Threading.Tasks;

namespace RestaurantPOS_MVC.Controllers
{
    [Authorize(Roles = "Manager")]
    public class DashboardController : Controller
    {
        private readonly ApplicationDbContext _context;

        public DashboardController(ApplicationDbContext context)
        {
            _context = context;
        }

        // Dashboard view for the manager
        public async Task<IActionResult> Index(DateTime? reportDate)
        {
            // Default to today's date if no date is provided
            if (!reportDate.HasValue)
            {
                reportDate = DateTime.Today;
            }

            // Total Sales for the day
            var totalSalesDay = await _context.Bills
                .Where(b => b.PaymentDate.Date == reportDate.Value.Date)
                .SumAsync(b => b.TotalAmount);

            // Total Number of Orders for the day
            var totalOrdersDay = await _context.Orders
                .Where(o => o.OrderDate.Date == reportDate.Value.Date)
                .CountAsync();

            // Total Sales and Orders for the week, month, and year
            var totalSalesWeek = await _context.Bills
                .Where(b => EF.Functions.DateDiffWeek(b.PaymentDate, reportDate.Value) == 0)
                .SumAsync(b => b.TotalAmount);
            var totalOrdersWeek = await _context.Orders
                .Where(o => EF.Functions.DateDiffWeek(o.OrderDate, reportDate.Value) == 0)
                .CountAsync();

            var totalSalesMonth = await _context.Bills
                .Where(b => b.PaymentDate.Month == reportDate.Value.Month && b.PaymentDate.Year == reportDate.Value.Year)
                .SumAsync(b => b.TotalAmount);
            var totalOrdersMonth = await _context.Orders
                .Where(o => o.OrderDate.Month == reportDate.Value.Month && o.OrderDate.Year == reportDate.Value.Year)
                .CountAsync();

            var totalSalesYear = await _context.Bills
                .Where(b => b.PaymentDate.Year == reportDate.Value.Year)
                .SumAsync(b => b.TotalAmount);
            var totalOrdersYear = await _context.Orders
                .Where(o => o.OrderDate.Year == reportDate.Value.Year)
                .CountAsync();

            // Total Number of Menu Items
            var totalItems = await _context.Items.CountAsync();

            // Recent Orders (e.g., last 5 orders)
            var recentOrders = await _context.Orders
                .OrderByDescending(o => o.OrderDate)
                .Take(5)
                .Include(o => o.OrderItems)
                .ThenInclude(oi => oi.Item)
                .ToListAsync();

            // Recent Bills (e.g., last 5 bills)
            var recentBills = await _context.Bills
                .OrderByDescending(b => b.PaymentDate)
                .Take(5)
                .ToListAsync();

            // Create the ViewModel
            var dashboardViewModel = new DashboardViewModel
            {
                TotalSalesDay = totalSalesDay,
                TotalOrdersDay = totalOrdersDay,
                TotalSalesWeek = totalSalesWeek,
                TotalOrdersWeek = totalOrdersWeek,
                TotalSalesMonth = totalSalesMonth,
                TotalOrdersMonth = totalOrdersMonth,
                TotalSalesYear = totalSalesYear,
                TotalOrdersYear = totalOrdersYear,
                TotalItems = totalItems,
                RecentOrders = recentOrders,
                RecentBills = recentBills
            };

            // Return the View with the ViewModel
            return View(dashboardViewModel);
        }
    }
}