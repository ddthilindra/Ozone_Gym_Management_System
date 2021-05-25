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
    public partial class user_diet_choosing : System.Web.UI.Page
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

                    int UId = Convert.ToInt32(Session["CID"].ToString());
                    
                    if(checkReserved()==false)
                    {
                        SqlCommand cmd = new SqlCommand("INSERT INTO DietReservation(CustRegId,DId) VALUES('" + UId + "','" + Request.QueryString["dietID"] + "')", con);
                        cmd.ExecuteNonQuery();
                    }
                    else
                    {
                        SqlCommand cmd = new SqlCommand("UPDATE DietReservation SET DId='" + Request.QueryString["dietID"] + "'where CustRegId='"+ UId + "'", con);
                        cmd.ExecuteNonQuery();
                    }

                    


                    Response.Write("<script>alert('Your Diet Has Saved Successully!!!');</script>");
                    Response.Redirect("user-diet-reserved.aspx");
                    con.Close();

                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                    Response.Write("<script>alert('Your Diet Did Not Saved!!!');</script>");
                }
            }
        }



        private bool checkReserved()
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            int UId = 1;
            bool res;

            SqlCommand cmd1 = new SqlCommand("Select * from DietReservation where CustRegId='" + UId + "'", con);
            SqlDataReader result = cmd1.ExecuteReader();

            if (result.HasRows)
            {
                res = true;
            }
            else
            {
                res = false;
            }

            return res;
        }
    }
}