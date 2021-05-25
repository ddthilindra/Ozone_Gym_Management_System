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
    public partial class forgetPass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btncheck_Click(object sender, EventArgs e)
        {
            try
            {
                
                String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlCommand cmd = new SqlCommand("SELECT * FROM Customer WHERE Email='" + email.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("forgotPass.aspx?email='" + email.Text.Trim()+"'");
            }


            catch (Exception ex)
            {
                Response.Write("<script>alert('Invalid Email');</script>");
                Console.Write(ex.Message);
            }
        }
    }
}