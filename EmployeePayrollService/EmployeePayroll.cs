using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EmployeePayrollService
{
    internal class EmployeePayroll
    {
        public int EmployeeID { get; set; }
        public string EmployeeName { get; set; }
        public string Phone { get; set; }
        public float Salary { get; set; }
        public DateTime Date { get; set; }

        public string Address { get; set; }
        public string department { get; set; }
        public float BasicPay { get; set; }
        public float Deductions { get; set; }
        public float TaxablePay { get; set; }
        public float IncomeTax { get; set; }
        public float NetPay { get; set; }
    }



}
