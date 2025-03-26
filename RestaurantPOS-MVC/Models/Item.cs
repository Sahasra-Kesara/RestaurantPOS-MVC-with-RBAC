namespace RestaurantPOS_MVC.Models
{
    public class Item
    {
        public int ItemId { get; set; }
        public string Name { get; set; }
        public decimal Price { get; set; }
        public string Category { get; set; }
        public string SubCategory { get; set; }  // New property for subcategory

    }
}
