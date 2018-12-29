using System;

namespace WebFormsVM {
    public class VM {
        public string VmName { get; set; }
        public int Score { get; set; } = 0;
        public bool ShowName { get => Score % 2 == 0; }
        public DateTime CreateDate { get; set; } = DateTime.Now;
        public Item PrimaryItem { get; set; }
    }

    public class Item {
        public string ItemName { get; set; } = "";
        public decimal UnitPrice { get; set; } = 0.0M;
    }
}