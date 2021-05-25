using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OzoneFitness
{
    public partial class employee_salary_cal : System.Web.UI.Page
    {

        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void salary_addemp_Click(object sender, EventArgs e)
        {

            Response.Redirect("employee-sal-cal-report.aspx");
        }

        protected void ok_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {

                    con.Open();

                }

                    float hours = float.Parse(othours.Text.Trim());

                    
                    try
                    {
                        String specs = "";

                        SqlCommand cmd1 = new SqlCommand("SELECT Specialization from Employee Where Emp_Id=" + emp_id.Text.Trim(), con);
                        SqlDataReader dr1 = cmd1.ExecuteReader();
                        while (dr1.Read())
                        {
                            specs = dr1.GetValue(0).ToString();
                        }
                        
                        dr1.Close();

                        SqlCommand cmd = new SqlCommand("SELECT * from Specialization_Table Where Specialization='"+ specs + "'", con);
                        SqlDataReader dr = cmd.ExecuteReader();

                    if (dr.HasRows)
                        {
                            while (dr.Read())
                            {

                                basic.Text = dr.GetValue(5).ToString();
                                otrate.Text = dr.GetValue(2).ToString();
                                bonus.Text = dr.GetValue(3).ToString();

                                float ansOt = otCalc(hours, float.Parse(otrate.Text));

                                otpay.Text = ansOt.ToString();


                                float deduct = deductionCalc(float.Parse(basic.Text));
                                deduction.Text = deduct.ToString();


                                float totnet = netSalaryCalc(float.Parse(basic.Text), ansOt, deduct, float.Parse(bonus.Text));
                                totalsal.Text = totnet.ToString();

                            }



                        }
                    }
                    catch(Exception ex2)
                    {
                        Console.WriteLine("Inner One");
                        Response.Write("<script>alert('Inner " + ex2.Message + "')</script>");
                    }

                
                


                



            }
            catch (Exception ex)
            {



            }

         }
        public float otCalc(float othours, float rate)
        {
            float val=0;
            
            val = othours * rate;

            return val;
        }


        public float deductionCalc(float basic)
        {

            float valDeduction = 0;

            if (basic < 15000)
            {

                float deductionPrecentage = 2;

                valDeduction = basic * (deductionPrecentage / 100);

            }

           else if (basic > 15000)
            {
                float deductionPrecentage = 5;
                valDeduction = basic * (deductionPrecentage / 100);

            }

            return valDeduction;
        }


        public float netSalaryCalc( float basic,float ansOt,float deduct,float bonus)
        {

            float NetSalary;

            NetSalary = basic + ansOt + bonus - deduct;

            return NetSalary;



        }

        protected void salary_addemp_Click1(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {

                    con.Open();

                }

                int admin = 1;


                SqlCommand cmd = new SqlCommand("INSERT INTO Salary(Emp_Id,OTPay,Deduction,TotalSalary) values ('" + admin + "',@OTPay,@Deduction,@TotalSalary)", con);



                
                cmd.Parameters.AddWithValue("@OTPay", otpay.Text.Trim());
                cmd.Parameters.AddWithValue("@Deduction", deduction.Text.Trim());
                cmd.Parameters.AddWithValue("@TotalSalary", totalsal.Text.Trim());



                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("employee-sal-cal-report.aspx");



            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
    }





         

}