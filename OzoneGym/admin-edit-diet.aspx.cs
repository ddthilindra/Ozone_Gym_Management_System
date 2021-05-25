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
    public partial class admin_edit_diet1 : System.Web.UI.Page
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


                    SqlCommand cmd = new SqlCommand("Select * from Diet where DietId=" + Request.QueryString["DietId"], con);
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            gender.SelectedValue = dr.GetValue(2).ToString();
                            description.Text = dr.GetValue(3).ToString();
                            diettype.SelectedValue = dr.GetValue(4).ToString();
                            foodtype.SelectedValue = dr.GetValue(5).ToString();
                            startBmi.Text = dr.GetValue(6).ToString();
                            endBmi.Text = dr.GetValue(7).ToString();
                            email.Text = dr.GetValue(9).ToString();
                            
                            
                            
                            Console.Write(email.Text);
                        }

                    }

                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
            }

                
        }

        protected void updatediet_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlCommand cmd = new SqlCommand("UPDATE Diet SET Email=@email, DietType=@diettype, Description=@description, Start_BMI=@startBmi,End_BMI=@endBmi,Gender=@gender,FoodType=@foodtype where DietId=" + Request.QueryString["DietId"], con);


                cmd.Parameters.AddWithValue("@email", email.Text.Trim());
                cmd.Parameters.AddWithValue("@diettype", diettype.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@description", description.Text.Trim());
                cmd.Parameters.AddWithValue("@startBmi", startBmi.Text.Trim());
                cmd.Parameters.AddWithValue("@endBmi", endBmi.Text.Trim());
                cmd.Parameters.AddWithValue("@gender", gender.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@foodtype", foodtype.SelectedItem.Value);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Updated!!');</script>");
                Response.Redirect("admin-diet-details.aspx", false);
                Context.ApplicationInstance.CompleteRequest();

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
    }
}