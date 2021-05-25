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
    public partial class admin_add_diet : System.Web.UI.Page
    {

        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void adddiet_Click(object sender, EventArgs e)
        {
            try {
                String filepath = "~/imgs/default.jpg";
                String filename = Path.GetFileName(imgup.PostedFile.FileName);
                imgup.SaveAs(Server.MapPath("DietsUp/" + filename));
                filepath = "./DietsUp/" + filename;

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed) {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO Diet(Gender,Description,DietType,FoodType,Start_BMI,End_BMI,Image,Email) VALUES(@gender,@description,@diettype,@foodtype,@startBmi,@endBmi,@image,@email)", con);

                cmd.Parameters.AddWithValue("@email", email.Text.Trim());
                cmd.Parameters.AddWithValue("@diettype", diettype.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@image", filepath);
                cmd.Parameters.AddWithValue("@description", description.Text.Trim());
                cmd.Parameters.AddWithValue("@startBmi", startBmi.Text.Trim());
                cmd.Parameters.AddWithValue("@endBmi", endBmi.Text.Trim());
                cmd.Parameters.AddWithValue("@gender", gender.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@foodtype", foodtype.SelectedItem.Value);

                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Diet Added Successfully');</script>");
                Response.Redirect("admin-diet-details.aspx");
                con.Close();
                
            }
            catch (Exception ex) {
                Response.Write("<script>alert('" + ex.Message + "');<script>");
            }
        }
    }
}