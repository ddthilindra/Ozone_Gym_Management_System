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
    public partial class delete_cart_item : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
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

                    int uid = 1;

                    SqlCommand cmd = new SqlCommand("DELETE from cart WHERE cart_id='" + Request.QueryString["cart_id"] + "'AND cus_id='" + uid + "'", con);

                    
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Deleted!!');</script>");
                    Response.Redirect("Cart.aspx?Deleted=sucess", false);
                    Context.ApplicationInstance.CompleteRequest();

                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                    Response.Write("<script>alert('" + ex.Message + "');</script>");

                }
            }
        }
    }
}