namespace EmployeePayrollService
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello, World!");

            EmployeePayrollRepo repo= new EmployeePayrollRepo();

            repo.GetAllEmployees();
        }
    }
}