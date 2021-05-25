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
    public partial class employee_leave : System.Web.UI.Page
    {

        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

      

        protected void add_leave_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {

                    con.Open();

                }


                SqlCommand cmd = new SqlCommand("INSERT INTO Leave_Table(Emp_Id,StartDate,EndDate,Reason) values (@Emp_Id,@StartDate,@EndDate,@Reason)", con);



                cmd.Parameters.AddWithValue("@Emp_Id", empid.Text.Trim());
                cmd.Parameters.AddWithValue("@StartDate", from.Text);
                cmd.Parameters.AddWithValue("@EndDate", to.Text);
                cmd.Parameters.AddWithValue("@Reason", reason.Text);



                cmd.ExecuteNonQuery();
                con.Close();

                Response.Redirect("employee-leave-report.aspx");


            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
    }
}