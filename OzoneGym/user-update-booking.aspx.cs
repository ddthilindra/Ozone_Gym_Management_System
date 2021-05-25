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
    public partial class user_update_booking : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString.ToString();

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


                    SqlCommand cmd = new SqlCommand("Select * from BookingO where BookingID=" + Request.QueryString["BookingID"], con);
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            
                            adbDate.Text = dr.GetValue(2).ToString();
                            bfrom.Text = dr.GetValue(3).ToString();
                            bto.Text = dr.GetValue(4).ToString();
                            sheduleT.SelectedValue = dr.GetValue(5).ToString();
                            trainer.SelectedValue = dr.GetValue(6).ToString();


                            // Console.Write(email.Text);
                        }

                    }

                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }

            }
        }

        protected void updatebook_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlCommand cmd = new SqlCommand("UPDATE BookingO SET Date=@Date, Time_from=@Time_from, Time_to=@Time_to, Shedule_Type=@Shedule_Type, Trainer=@Trainer  where BookingID=" + Request.QueryString["BookingID"], con);


                cmd.Parameters.AddWithValue("@Date", adbDate.Text.Trim());
                cmd.Parameters.AddWithValue("@Time_from", bfrom.Text.Trim());
                cmd.Parameters.AddWithValue("@Time_to", bto.Text.Trim());
                cmd.Parameters.AddWithValue("@Shedule_Type", sheduleT.Text.Trim());
                cmd.Parameters.AddWithValue("@Trainer", trainer.Text.Trim());






                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Updated!!');</script>");
                Response.Redirect("user-booking-details.aspx", false);
                Context.ApplicationInstance.CompleteRequest();

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
    }
}