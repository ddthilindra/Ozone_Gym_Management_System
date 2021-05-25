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
    public partial class admin_add_schedule : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
         
        protected void submit_Click(object sender, EventArgs e)
        {
            try 
            {
                //String filepath = "abc";

                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Schedules (Schedule_name, Schedule_type, Description, Gender) values(@Schedule_name, @Schedule_type, @Description, @Gender)",con);

                cmd.Parameters.AddWithValue("@Schedule_name", schedulen.Text.Trim());
                cmd.Parameters.AddWithValue("@Schedule_type", DropDownList2.SelectedItem.Value);
                //cmd.Parameters.AddWithValue("@Image", filepath);
                cmd.Parameters.AddWithValue("@Description", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Gender", DropDownList1.SelectedItem.Value);

                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Author added Succesfully');</script>");
                
                con.Close();
                Response.Redirect("admin-schedule.aspx");
            }
            catch(Exception ex)
            { 
                Response.Write("<script>alert('" + ex.Message +"');</script>");
            }
        }
    }
}