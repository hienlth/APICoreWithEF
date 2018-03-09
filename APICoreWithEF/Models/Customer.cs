using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Runtime.Serialization;
using System.Threading.Tasks;

namespace APICoreWithEF.Models
{
    public class Customer
    {
        [Key]
        public int CustomerID { get; set; }
        public string FullName { get; set; }
        public string Address { get; set; }
        public string Country { get; set; }        
        public string PhoneNumber { get; set; }
        public string City { get; set; }
    }

}
