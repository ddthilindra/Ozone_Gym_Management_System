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
    public partial class login : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        string pass;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('Signup Success...!');</script>");
            bool asd;

            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }


#pragma warning disable CS0618 // Type or member is obsolete
                string Password = pwd.Text.Trim();
#pragma warning restore CS0618 // Type or member is obsolete
                bool iscrct = false;


                SqlCommand cmd1 = new SqlCommand("SELECT * FROM Customer WHERE Email='" + email.Text.Trim() + "'", con);

                SqlDataReader dr1 = cmd1.ExecuteReader();


                while (dr1.Read())
                {
                    string hash = dr1.GetValue(13).ToString();
                    iscrct = BCrypt.Net.BCrypt.Verify(Password, hash);

                }
                dr1.Close();

                if (iscrct == true)
                {
                    SqlCommand cmd = new SqlCommand("SELECT * FROM Customer WHERE Email='" + email.Text.Trim() + "'", con);

                    SqlDataReader dr = cmd.ExecuteReader();

                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            Session["CID"] = dr.GetValue(0).ToString();
                            Session["fname"] = dr.GetValue(1).ToString();
                            Session["lname"] = dr.GetValue(2).ToString();
                            Session["Image"] = dr.GetValue(3).ToString();
                            Session["Email"] = dr.GetValue(12).ToString();
                            Session["role"] = "user";

                            Response.Write("<script>alert('Login Successful');</script>");
                        }

                        con.Close();
                        Response.Redirect("userdashbord.aspx", false);
                        Context.ApplicationInstance.CompleteRequest();

                        //cmd.Cancel;
                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid');</script>");
                    }

                }
                else
                {

                    SqlCommand cmd2 = new SqlCommand("SELECT * FROM Admin WHERE Email='" + email.Text.Trim() + "'AND pwd='" + pwd.Text.Trim() + "' ", con);

                    SqlDataReader dr2 = cmd2.ExecuteReader();

                    if (dr2.HasRows)
                    {
                        while (dr2.Read())
                        {

                            Response.Write("<script>alert('Login Successful')</script>");
                            Session["AdminId"] = dr2.GetValue(0).ToString();
                            Session["Email"] = dr2.GetValue(1).ToString();
                            Session["role"] = "admin";

                        }
                        Response.Redirect("admindashboard.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid');</script>");
                    }

                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void pwdfoget_Click(object sender, EventArgs e)
        {
            Response.Redirect("forgotPassCheckEmail.aspx");
            //BCrypt.Net.BCrypt.Verify(pwd.Text, dr3.GetValue(13).ToString());
        }
    }
}