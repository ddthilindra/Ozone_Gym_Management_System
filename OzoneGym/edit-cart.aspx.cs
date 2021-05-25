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
    public partial class edit_cart : System.Web.UI.Page
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

                    int uid = 1;

                    SqlCommand cmd = new SqlCommand("SELECT * FROM Shop WHERE ItemID='"+ Request.QueryString["itemId"] + "'", con);
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            ItemName.Text = dr.GetValue(0).ToString();
                            desc.Text = dr.GetValue(1).ToString();
                            
                        }

                    }
                    dr.Close();


                    SqlCommand cmd1 = new SqlCommand("SELECT * FROM cart WHERE itemId='" + Request.QueryString["itemId"] + "' AND cus_id='"+uid+"'", con);
                    SqlDataReader dr1 = cmd1.ExecuteReader();
                    if (dr1.HasRows)
                    {
                        while (dr1.Read())
                        {
                            qty.Text = dr1.GetValue(2).ToString();
                            
                        }

                    }


                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                    Response.Write("<script>alert('" + ex.Message + "');</script>");

                }
            }
        }

        protected void updateItem_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {

                    con.Open();

                }

                int uid = 1;

                SqlCommand cmd = new SqlCommand("UPDATE cart SET quantity=@quantity WHERE itemId='" + Request.QueryString["itemId"] + "'AND cus_id='"+uid+"'", con);
                cmd.Parameters.AddWithValue("@quantity", qty.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Cart.aspx");

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
    }
}