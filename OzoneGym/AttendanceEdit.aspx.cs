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
    public partial class AttendanceEdit : System.Web.UI.Page
    {


        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {


            if (!Page.IsPostBack)
            {
                try
                {

                    SqlConnection con = new SqlConnection(strcon);

                    if (con.State == ConnectionState.Closed)
                    {

                        con.Open();

                    }


                    SqlCommand cmd = new SqlCommand("Select * from Employee_Attendence where Att_Emp_Id=" + Request.QueryString["Att_Emp_Id"], con);
                    SqlDataReader dr = cmd.ExecuteReader();

                    if (dr.HasRows)

                    {


                        while (dr.Read())
                        {




                            Emp_Id.Text = dr.GetValue(1).ToString();
                            Shift.Text = dr.GetValue(2).ToString();
                            Ot.Text = dr.GetValue(3).ToString();
                            DateOfAttend.Text = dr.GetValue(4).ToString();


                        }
                    }


                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                    Response.Write("<script>alert('" + ex.Message + "');</script>");

                }

            }


        }

        protected void Edit_attendance_emp_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {

                    con.Open();

                }


                SqlCommand cmd = new SqlCommand("UPDATE Employee_Attendence SET Emp_Id=@Emp_Id,Shift=@Shift,Ot=@Ot,DateOfAttend=@DateOfAttend WHERE Att_Emp_Id = " + Request.QueryString["Att_Emp_Id"], con);




                cmd.Parameters.AddWithValue("@Emp_Id", Emp_Id.Text.Trim());
                cmd.Parameters.AddWithValue("@Shift", Shift.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Ot", Ot.Text.Trim());
                cmd.Parameters.AddWithValue("@DateOfAttend", DateOfAttend.Text);



                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('UPDATED!!');</script>");
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