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
    public partial class employee_edit_leave : System.Web.UI.Page
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


                    SqlCommand cmd = new SqlCommand("Select * from Leave_Table where LeaveId=" + Request.QueryString["LeaveId"], con);
                    SqlDataReader dr = cmd.ExecuteReader();

                    if (dr.HasRows)

                    {


                        while (dr.Read())
                        {




                            empid.Text = dr.GetValue(1).ToString();
                            from.Text = dr.GetValue(2).ToString();
                            to.Text = dr.GetValue(3).ToString();
                            reason.Text = dr.GetValue(4).ToString();
                           








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

        protected void addleaveemp_Click(object sender, EventArgs e)
        {

            try
            {

                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {

                    con.Open();




                }



                SqlCommand cmd = new SqlCommand("UPDATE Leave_Table SET Emp_Id=@Emp_Id,StartDate=@StartDate,EndDate=@EndDate,Reason=@Reason WHERE LeaveId = " + Request.QueryString["LeaveId"], con);



                cmd.Parameters.AddWithValue("@Emp_Id", empid.Text.Trim());

                cmd.Parameters.AddWithValue("@StartDate", from.Text.Trim());
                cmd.Parameters.AddWithValue("@EndDate", to.Text.Trim());
                cmd.Parameters.AddWithValue("@Reason", reason.Text.Trim());
              


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('UPDATED!!');</script>");
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