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
    public partial class user_schedule : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand("Select * from Schedule_Reservation  where Register_Id=" +uid, con);
                SqlDataReader dr = cmd.ExecuteReader();

                int Shedule_Id=0;

                if (dr.HasRows)

                {


                    while (dr.Read())
                    {

                        Shedule_Id = (int)dr.GetValue(2);
                       
                    }
                }
                dr.Close();

                SqlCommand cmd1 = new SqlCommand("Select * from Schedules  where Schedule_Id=" + Shedule_Id, con);
                ListView1.DataSource = cmd1.ExecuteReader();
                ListView1.DataBind();


                con.Close();
                
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}