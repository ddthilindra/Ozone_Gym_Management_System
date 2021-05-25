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
    public partial class user_booking : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString.ToString();

        protected void Page_Load(object sender, EventArgs e)
        {



        }
        protected void addbook_Click(object sender, EventArgs e)
        {
            int cid = 2;


            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO BookingO(CID,Date,Time_from,Time_to,Shedule_Type,Trainer) VALUES(@cid,@date,@time_from,@time_to,@shedule_Type,@trainer)", con);

                cmd.Parameters.AddWithValue("@cid",cid);
                cmd.Parameters.AddWithValue("@date", adbDate.Text.Trim());
                cmd.Parameters.AddWithValue("@time_from", bfrom.Text.Trim());
                cmd.Parameters.AddWithValue("@time_to", bto.Text.Trim());
                cmd.Parameters.AddWithValue("@Shedule_Type", sheduleT.Text.Trim());
                cmd.Parameters.AddWithValue("@trainer", trainer.Text.Trim());


                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Booking Added Successfully');</script>");
                Response.Redirect("user-booking-details.aspx",false);
                Context.ApplicationInstance.CompleteRequest();
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }

    }
}