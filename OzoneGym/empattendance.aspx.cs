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
    public partial class empattendance : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void add_attendance_emp_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {

                    con.Open();

                }


                SqlCommand cmd = new SqlCommand("INSERT INTO Employee_Attendence(Emp_Id,Shift,Ot,DateOfAttend) values (@Emp_Id,@Shift,@Ot,@DateOfAttend)", con);




                cmd.Parameters.AddWithValue("@Emp_Id", Emp_Id.Text.Trim());
                cmd.Parameters.AddWithValue("@Shift", Shift.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Ot", Ot.Text.Trim());
                cmd.Parameters.AddWithValue("@DateOfAttend", DateOfAttend.Text);
               


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("ReportAttendance.aspx");



            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
    }
}