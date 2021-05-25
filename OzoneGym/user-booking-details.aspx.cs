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
    public partial class user_booking_details : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString.ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                int CID = 2;

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from  BookingO WHERE CID="+ CID, con);
                ListView1.DataSource = cmd.ExecuteReader();
                ListView1.DataBind();


            }
            catch (Exception ex)
            {

            }
        }
    }
}