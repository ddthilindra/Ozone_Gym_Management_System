using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OzoneFitness
{
    public partial class admin_update_item : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        //static String filepath;


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


                    SqlCommand cmd = new SqlCommand("Select * from stored where itemId=" + Request.QueryString["itemId"], con);
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            name.Text = dr.GetValue(3).ToString();
                            qty.Text = dr.GetValue(4).ToString();
                            supplier.Text = dr.GetValue(5).ToString();
                            //filepath = dr.GetValue(8).ToString();
                            price.Text = dr.GetValue(7).ToString();
                            idesc.Text = dr.GetValue(8).ToString();
                            pdate.Text = dr.GetValue(9).ToString();    

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

        protected void updateItem_Click(object sender, EventArgs e)
        {
            try
            {
                //String filepath = "~/imgs/default.jpg";
               // String filename = Path.GetFileName(img.PostedFile.FileName);
                //img.SaveAs(Server.MapPath("uploads/" + filename));
               // filepath = "~/uploads/" + filename;

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlCommand cmd = new SqlCommand("UPDATE stored SET name=@name, qty=@qty, supplier=@supplier, price=@price, idesc=@idesc, pdate=@pdate  where itemId=" + Request.QueryString["itemId"], con);


                cmd.Parameters.AddWithValue("@name", name.Text.Trim());
                cmd.Parameters.AddWithValue("@qty", qty.Text.Trim());
                cmd.Parameters.AddWithValue("@supplier", supplier.Text.Trim());
                //cmd.Parameters.AddWithValue("@img", filepath);
                cmd.Parameters.AddWithValue("@price", price.Text.Trim());
                cmd.Parameters.AddWithValue("@idesc", idesc.Text.Trim());
                cmd.Parameters.AddWithValue("@pdate", pdate.Text.Trim());





                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Updated!!');</script>");
                Response.Redirect("admin-item-details.aspx", false);
                Context.ApplicationInstance.CompleteRequest();

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

    }
}