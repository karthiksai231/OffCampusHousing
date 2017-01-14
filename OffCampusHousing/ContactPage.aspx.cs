using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OffCampusHousing
{
    public partial class ContactPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                //Guid newGuid = Guid.NewGuid();
                SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["OffCampusHousing"].ConnectionString);
                cn.Open();
                string commandText = "Insert into UserQuestions (Name,Email,Mobile,Questions) values (@Name,@Email,@Mobile,@Questions)";
                SqlCommand cmd = new SqlCommand(commandText, cn);
                //cmd.Parameters.AddWithValue("@ID", newGuid);
                cmd.Parameters.AddWithValue("@Name", txtName.Text);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@Mobile", txtMobile.Text);
                cmd.Parameters.AddWithValue("@Questions", txtQuestions.Text);

                cmd.ExecuteNonQuery();
                cn.Close();
                string str = "<span style='color:red' > Thank You!!!! We will get back to you soon</span>";
                Response.Write(str);
            }
            catch (Exception ex)
            {
                Response.Write("Error" + ex.ToString());
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("MainPage.aspx");
        }
    }
    }
