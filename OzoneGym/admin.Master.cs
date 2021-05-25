using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OzoneFitness
{
    public partial class admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["role"] == null)
            {

                Response.Redirect("404.aspx");
            }
#pragma warning disable CS0252 // Possible unintended reference comparison; left hand side needs cast
            else if (Session["role"] == "admin")
#pragma warning restore CS0252 // Possible unintended reference comparison; left hand side needs cast
            {
               
                Username1.Text = Session["Email"].ToString();
                int adminId = Convert.ToInt32(Session["AdminId"].ToString());
            }
            else
            {
                
                Username1.Text = Session["fname"].ToString();
            }
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session["CID"] = "";
            Session["fname"] = "";
            Session["lname"] = "";
            Session["Email"] = "";
            Session["role"] = null;


            logout.Visible = false;//logout user login link
            Username1.Visible = false;//hello 

            Response.Redirect("login.aspx");
        }
    }
}