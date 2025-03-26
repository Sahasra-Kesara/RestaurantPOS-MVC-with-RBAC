namespace RestaurantPOS_MVC.Models
{
    public class Bill
    {
        public int BillId { get; set; }
        public int OrderId { get; set; }
        public decimal TotalAmount { get; set; }
        public DateTime PaymentDate { get; set; }

        public Order Order { get; set; }
    }

}
