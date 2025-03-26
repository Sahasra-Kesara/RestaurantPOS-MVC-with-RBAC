using System;
using System.Collections.Generic;

namespace RestaurantPOS_MVC.Models
{
    public class DashboardViewModel
    {
        // Sales data for different periods
        public decimal TotalSalesDay { get; set; }
        public int TotalOrdersDay { get; set; }
        public decimal TotalSalesWeek { get; set; }
        public int TotalOrdersWeek { get; set; }
        public decimal TotalSalesMonth { get; set; }
        public int TotalOrdersMonth { get; set; }
        public decimal TotalSalesYear { get; set; }
        public int TotalOrdersYear { get; set; }

        // Menu item count
        public int TotalItems { get; set; }

        // Recent orders and bills
        public List<Order> RecentOrders { get; set; }
        public List<Bill> RecentBills { get; set; }
    }
}