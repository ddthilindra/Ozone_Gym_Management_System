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
    public partial class admin_delete_employee : System.Web.UI.Page
    {

        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {

                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {

                    con.Open();

                }


                SqlCommand cmd = new SqlCommand("DELETE from Employee where Emp_id=" + Request.QueryString["Emp_id"], con);


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("employee-report.aspx");

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }


        }
    }
}