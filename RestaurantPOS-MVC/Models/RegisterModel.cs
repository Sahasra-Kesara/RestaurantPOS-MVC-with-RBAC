﻿namespace RestaurantPOS_MVC.Models
{
    public class RegisterModel
    {
        public string Username { get; set; }
        public string Password { get; set; }
        public string Role { get; set; } // 'Cashier' or 'Manager'
    }

}
