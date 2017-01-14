using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
//using OffCampusHousing.DAL;

namespace OffCampusHousing
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString["status"]!=null)
            {
                if(Request.QueryString["status"]=="logout")
                {
                    lblLogOut.Text = "<span style='color:red'><b>Logged Out Sucessfully!!!!!</span> ";
                }
                else
                {
                    lblLogOut.Text = "";
                }
            }
            else
            {
                lblLogOut.Text = "";
            }



            HttpCookie cookie = Request.Cookies["isLogout"];

            if (cookie == null)
            {
                lblCookie.Text = "";
            }
            else
            {
                //If cookie found, then check the value
                if (cookie.Value.ToString() == "1")
                {
                    lblCookie.Text = "<span style='color:red'><b>Logged Out Sucessfully!!!!!</span> ";
                }
                else
                {
                    lblCookie.Text = "";
                }
                //Expire the cookie as soon as you read the value so that
                //subsequent refresh doesn't find the logout flag and the 
                //message is not displayed again.
                cookie.Expires = DateTime.Now.AddDays(-1d);
                Response.Cookies.Add(cookie);
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //string connectionString = ConnectionString.Current;
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["OffCampusHousing"].ConnectionString);
            cn.Open();
            string checkUser = "select count(*) from UserData2 where UserName='" + txtUserId.Text + "'";
            SqlCommand cmd = new SqlCommand(checkUser, cn);
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            cn.Close();
            if(temp==1)
            {
                cn.Open();
                string checkPassword = "select Password from UserData2 where UserName='" + txtUserId.Text + "'";
                SqlCommand cmdpass = new SqlCommand(checkPassword,cn);
                string pass = cmdpass.ExecuteScalar().ToString();
                if(pass==txtPassword.Text)
                {
                    string checkUser1 = "select RoleId from UserData2 where UserName='" + txtUserId.Text + "'";
                    SqlCommand cmd1 = new SqlCommand(checkUser1, cn);
                    int temp2 = Convert.ToInt32(cmd1.ExecuteScalar().ToString());
                    if (temp2 == 1)
                    {
                        Session["New"] = txtUserId.Text;
                        Response.Redirect("AdminPage.aspx");
                    }
                    else if (temp2 == 2)
                    {
                        Response.Redirect("CompanyList1.aspx");
                    }
                    else
                    {
                        string str = "<span style='color:red' >Error Please Check the Details!!!!!!!!</span>";
                        Response.Write(str);
                    }
                }
                else
                {
                    string str = "<span style='color:red' >Password Incorrect!!!!!!!</span>";
                    //Response.Write(String.Format(@"<span style=""color: #{0}"">{1}</span>", System.Drawing.ColorTranslator.ToHtml(Color.Red), "Password Incorrect"));
                    Response.Write(str);
                }
            }
            else
            {
                string str = "<span style='color:red' >Invalid UserName!!!!!!!!</span>";
                Response.Write(str);
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtUserId.Text = string.Empty;
            txtPassword.Text = string.Empty;
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegistrationPage.aspx");
        }
    }
}