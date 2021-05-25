using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OzoneFitness
{
    public partial class headerFooter : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"] == null)
                {
                    login.Visible = true;//user login link
                    join.Visible = true;//join login link


                    logout.Visible = false;//logout user login link
                    username.Visible = false;//hello 

                }
                else if (Session["role"] == "user")
                {
                    login.Visible = false;//user login link
                    join.Visible = false;//join login link

                    logout.Visible = true;//logout user login link
                    username.Visible = true;//hello 
                    username.Text = "Hello " + Session["CID"];
                }
                else if (Session["role"] == "admin")
                {
                    login.Visible = false;//user login link
                    join.Visible = false;//join login link

                    logout.Visible = true;//logout user login link
                    username.Visible = true;//hello 
                    username.Text = "Hello Admin";
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

        protected void login_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void join_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session["CID"] = "";
            Session["fname"] = "";
            Session["lname"] = "";
            Session["Email"] = "";
            Session["role"] = "";

            login.Visible = true;//user login link
            join.Visible = true;//join login link

            logout.Visible = false;//logout user login link
            username.Visible = false;//hello 

            Response.Redirect("login.aspx");
        }
    }
}