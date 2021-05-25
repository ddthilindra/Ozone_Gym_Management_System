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
    public partial class user_diet_reserved : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                
                BindListView();
            }
        }

        private void BindListView()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                int UId = Convert.ToInt32(Session["CID"].ToString());
                string status = Request.QueryString["status"];

                SqlCommand cmd = new SqlCommand("Select * from DietReservation where CustRegId='" + UId + "'", con);
                SqlDataReader result = cmd.ExecuteReader();

                

                if (result.HasRows)
                {
                    result.Read();

                    int Did = Convert.ToInt32(result[2]);

                    result.Close();
                    try
                    {
                        SqlCommand cmd1 = new SqlCommand("Select * from Diet where DietId='" + Did +"'", con);
                        ListView1.DataSource = cmd1.ExecuteReader();
                        ListView1.DataBind();

                    }
                    catch (Exception ex)
                    {
                        Response.Write("<script>alert('FIRST TRY BLOCK " + ex.Message + "');</script>");
                    }
                    
                    con.Close();

                }
                else
                {
                    Response.Write("<script>alert('You Need to Choose A Diet Fist!!!');</script>");
                    Response.Redirect("user-diets-show.aspx?noDiet", false);

                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('LAST TRY BLOCK " + ex.Message + "');</script>");
            }
        }

        protected void deleteDietUser_Click(object sender, EventArgs e)
        {
            int UId = 1;
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlCommand cmd = new SqlCommand("DELETE from DietReservation where CustRegId='" + UId + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Deleted!!');</script>");
                Response.Redirect("user-diets-show.aspx?Deleted=sucess", false);
                Context.ApplicationInstance.CompleteRequest();
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            
        }
    }
}