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
    public partial class user_success_reserved : System.Web.UI.Page
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

                int uid = Convert.ToInt32(Session["CID"].ToString());

                DateTime currentdate = Convert.ToDateTime(DateTime.Now.ToString());


                SqlCommand cmd = new SqlCommand("INSERT INTO PackageReservation(cust_Id,pack_Id,dateTime) VALUES('"+ uid + "','" + Request.QueryString["pId"] +"','"+currentdate+"')", con);

                

                cmd.ExecuteNonQuery();
                
                
                con.Close();


            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}