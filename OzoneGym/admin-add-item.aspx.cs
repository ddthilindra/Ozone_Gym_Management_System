using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OzoneFitness
{
    public partial class admin_add_item : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void additem_Click(object sender, EventArgs e)
        {
            try
            {
                String filepath = "~/imgs/default.jpg";
                String filename = Path.GetFileName(img.PostedFile.FileName);
                img.SaveAs(Server.MapPath("uploads/" + filename));
                filepath = "~/uploads/" + filename;

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO stored(name,qty,supplier,img,price,idesc,pdate) VALUES(@name,@qty,@supplier,@image,@price,@idesc,@pdate)", con);

                cmd.Parameters.AddWithValue("@name", name.Text.Trim());
                cmd.Parameters.AddWithValue("@qty", qty.Text.Trim());
                cmd.Parameters.AddWithValue("@supplier", supplier.Text.Trim());
                cmd.Parameters.AddWithValue("@image", filepath);
                cmd.Parameters.AddWithValue("@price", price.Text.Trim());
                cmd.Parameters.AddWithValue("@idesc", idesc.Text.Trim());
                cmd.Parameters.AddWithValue("@pdate", pdate.Text);

                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Item Added Successfully');</script>");
                Response.Redirect("admin-item-details.aspx");
                con.Close();

                

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');<script>");
            }
        }
    }
}