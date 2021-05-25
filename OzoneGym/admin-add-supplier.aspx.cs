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
    public partial class admin_addSupplier : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addsup_Click(object sender, EventArgs e)
        {
            try
            {
                
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO supplier(name,email,address,phone) VALUES(@name,@email,@address,@phone)", con);

                cmd.Parameters.AddWithValue("@name", sname.Text.Trim());
                cmd.Parameters.AddWithValue("@email", semail.Text.Trim());
                cmd.Parameters.AddWithValue("@address", saddress.Text.Trim());
                cmd.Parameters.AddWithValue("@phone", sphone.Text.Trim());
               

                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Supplier Added Successfully');</script>");
                Response.Redirect("admin-suppliers-details.aspx");
                con.Close();



            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');<script>");
            }
        }





    }
}