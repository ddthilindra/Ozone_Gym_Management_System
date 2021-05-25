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
    public partial class user_add_schedule : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                int uid = 1;

                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                if (Request.QueryString["status"] == "update")
                {
                    SqlCommand cmd = new SqlCommand("UPDATE Schedule_Reservation SET Register_Id='"+uid+ "', Schedule_Id= '" + Request.QueryString["Schedule_Id"] + "'", con);



                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Shedule added Succesfully');</script>");

                }
                else
                {
                    SqlCommand cmd = new SqlCommand("INSERT INTO Schedule_Reservation (Register_Id, Schedule_Id) values('" + uid + "', '" + Request.QueryString["Schedule_Id"] + "')", con);



                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Shedule added Succesfully');</script>");

                }

                con.Close();
                Response.Redirect("user-schedule.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }
    }
}