using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Net;

namespace OffCampusHousing
{
    public partial class RegistrationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            try
            {
                //Guid newGuid = Guid.NewGuid();
                SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["OffCampusHousing"].ConnectionString);
                cn.Open();
                string commandText = "Insert into UserData1 (UserName,Email,Password,State) values (@UserName,@Email,@Password,@State)";
                SqlCommand cmd = new SqlCommand(commandText, cn);
                //cmd.Parameters.AddWithValue("@ID", newGuid);
                cmd.Parameters.AddWithValue("@UserName", txtUserName.Text);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
                cmd.Parameters.AddWithValue("@State", ddState.SelectedItem.ToString());
                cmd.ExecuteNonQuery();
                cn.Close();
                string uName = txtUserName.Text;
                SendActivationEmail(uName);
                Response.Redirect("LoginPage.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("Registration Failed" + ex.ToString());
            }
        }
        private void SendActivationEmail(string uName)
        {
            string constr = ConfigurationManager.ConnectionStrings["OffCampusHousing"].ConnectionString;
            //string activationCode = Guid.NewGuid().ToString();
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("INSERT INTO UserActivation VALUES(@UserName)"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.Parameters.AddWithValue("@UserName", uName);
                        //cmd.Parameters.AddWithValue("@ActivationCode", activationCode);
                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
            }
            using (MailMessage mm = new MailMessage("tysont447@gmail.com", txtEmail.Text))
            {
                mm.Subject = "Account Activation";
                string body = "Hello " + txtUserName.Text.Trim() + ",";
                body += "<br /><br />Your Registration is Successfull";
                body += "<br /></br>Your request is under review";
                body += "<br /><br />Thank You";
                mm.Body = body;
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential NetworkCred = new NetworkCredential("tysont447@gmail.com", "25892589");
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(mm);
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtUserName.Text = string.Empty;
            txtEmail.Text= string.Empty;
            txtPassword.Text = string.Empty; ;
            txtConPassword.Text = string.Empty; 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}