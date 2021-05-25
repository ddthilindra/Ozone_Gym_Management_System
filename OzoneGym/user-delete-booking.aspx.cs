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
    public partial class user_delete_booking : System.Web.UI.Page
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


                    SqlCommand cmd = new SqlCommand("DELETE from BookingO where BookingID=" + Request.QueryString["BookingID"], con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Deleted!!');</script>");
                    Response.Redirect("user-booking-details.aspx?Deleted=sucess", false);
                    Context.ApplicationInstance.CompleteRequest();

                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
            }
        }
    }
}