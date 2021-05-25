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
    public partial class addToCart : System.Web.UI.Page
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


                    SqlCommand cmd = new SqlCommand("SELECT * FROM stored WHERE ItemID='" + Request.QueryString["ItemID"] + "'", con);
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            ItemID.Text = dr.GetValue(0).ToString();
                            desc.Text = dr.GetValue(8).ToString();
                            available.Text = dr.GetValue(4).ToString();

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

        protected void addCart_Click(object sender, EventArgs e)
        {

            try
            {

                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {

                    con.Open();

                }

                int uid = 1;
                int itemID = Convert.ToInt32(ItemID.Text.Trim());

                if (checkCart(uid, itemID) == true)
                {
                    SqlCommand cmd1 = new SqlCommand("SELECT quantity FROM cart WHERE cus_id='" + uid + "'AND itemId='" + itemID + "'", con);
                    SqlDataReader result = cmd1.ExecuteReader();

                    int qantity=0;

                    if (result.HasRows)
                    {
                        while (result.Read())
                        {
                            qantity = Convert.ToInt32(result.GetValue(0).ToString());
                        }
                    }

                    result.Close();

                    int newQuantity = Convert.ToInt32(qty.Text.Trim());

                    int totalQuantity = qantity + newQuantity;

                    SqlCommand cmd = new SqlCommand("UPDATE cart SET quantity='"+ totalQuantity + "' WHERE cus_id='" + uid + "'AND itemId='" + itemID + "'", con);
                    
                    cmd.ExecuteNonQuery();
                    Response.Redirect("shop.aspx");
                    con.Close();
                }
                else
                {
                    SqlCommand cmd = new SqlCommand("INSERT INTO cart (cus_id,quantity,itemId) VALUES('" + uid + "',@quantity,@itemId)", con);

                    //cmd.Parameters.AddWithValue("@cus_id", email.Text.Trim());
                    cmd.Parameters.AddWithValue("@quantity", qty.Text.Trim());
                    cmd.Parameters.AddWithValue("@itemId", ItemID.Text.Trim());
                    cmd.ExecuteNonQuery();


                    Response.Redirect("shop.aspx");
                    con.Close();
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        private bool checkCart(int userId, int itemId)
        {
            bool res = false;

            try
            {

                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {

                    con.Open();

                }


                SqlCommand cmd = new SqlCommand("SELECT itemId FROM cart WHERE cus_id='" + userId + "'AND itemId='" + itemId + "'", con);
                SqlDataReader result = cmd.ExecuteReader();

                if (result.HasRows)
                {
                    res = true;
                }
                else
                {
                    res = false;
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }

            return res;
        }
    }

}