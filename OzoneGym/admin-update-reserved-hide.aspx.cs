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
    public partial class admin_update_reserved_hide : System.Web.UI.Page
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

                DateTime currentdate = Convert.ToDateTime(DateTime.Now.ToString());

                SqlCommand cmd = new SqlCommand("UPDATE PackageReservation SET pack_Id=@pkid,dateTime='"+currentdate+"' WHERE pr_Id = " + Request.QueryString["prId"], con);



                cmd.Parameters.AddWithValue("@pkid", Request.QueryString["pid"]);
                



                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('UPDATED!!');</script>");
                Response.Redirect("admin-view-reserved.aspx");




            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
    }
}