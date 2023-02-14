using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EmployeePayrollService
{
     class EmployeePayrollRepo
    {
        public static string constr = @"Server = PRIYANSHU\SPARTA;Database = payroll_service;integrated security = SSPI";
        SqlConnection connection = new  SqlConnection(constr);

        public void GetAllEmployees()
        {
            try
            {
                EmployeePayroll employeeModel= new EmployeePayroll();
                using(this.connection)
                {
                    string query = @"select * from employee_payroll";

                    SqlCommand cmd = new SqlCommand(query, connection);

                    this.connection.Open();

                    SqlDataReader dataReader = cmd.ExecuteReader(); 

                    if(dataReader.HasRows)
                    {
                        while(dataReader.Read())
                        {
                            employeeModel.EmployeeID = dataReader.GetInt32(0);
                            employeeModel.EmployeeName= dataReader.GetString(1);
                            employeeModel.Salary = dataReader.GetChar(2);
                            employeeModel.Date = dataReader.GetDateTime(3);
                            employeeModel.Phone= dataReader.GetString(4);
                            employeeModel.Address= dataReader.GetString(5);
                            employeeModel.department= dataReader.GetString(6);
                            employeeModel.BasicPay = dataReader.GetChar(7);
                            employeeModel.Deductions= dataReader.GetChar(8);
                            employeeModel.TaxablePay = dataReader.GetChar(9);
                            employeeModel.IncomeTax= dataReader.GetChar(10);
                            employeeModel.NetPay = dataReader.GetChar(11);

                            Console.WriteLine($"{employeeModel.EmployeeID} {employeeModel.EmployeeName} {employeeModel.Salary}");
                            Console.WriteLine("\n");
                        }
                    }
                    else
                    {
                        Console.WriteLine("No data found");
                    }
                    dataReader.Close();
                }
            }
            catch(Exception ex) {
                Console.WriteLine(ex.Message);
            }
        }
    }
}
