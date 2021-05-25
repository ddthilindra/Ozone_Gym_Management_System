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
    public partial class forgotPass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnpass_Click(object sender, EventArgs e)
        {
            try
            {
                
                String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                string Password = BCrypt.Net.BCrypt.HashString(repwd.Text);

                SqlCommand cmd = new SqlCommand("UPDATE Customer SET Password='"+ Password + "' WHERE Email=" + Request.QueryString["email"].Trim(), con);

                Console.Write(cmd);

                cmd.Parameters.AddWithValue("@pwd1", repwd.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();

                lblemail.Text = Request.QueryString["email"];

                 

                Response.Write("<script>alert('Password Update Success...!');</script>");
            }


            catch (Exception ex)
            {
                Response.Write("<script>alert('Password Update Signup Unsuccess...!');</script>");
                Console.Write(ex.Message);
            }
        }
    }
}