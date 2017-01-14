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
    public partial class LoginPage1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["OffCampusHousing"].ConnectionString);
            //        cn.Open();
            //        string checkUser = "select count(*) from UserData2 where UserName='" + txt1.Text + "'";
            //        SqlCommand cmd = new SqlCommand(checkUser, cn);
            //        int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            //        cn.Close();
            //        if (temp == 1)
            //        {
            //            cn.Open();
            //            string checkPassword = "select Password from UserData2 where UserName='" + txt1.Text + "'";
            //            SqlCommand cmdpass = new SqlCommand(checkPassword, cn);
            //            string pass = cmdpass.ExecuteScalar().ToString();
            //            if (pass == txt2.Text)
            //            {
            //                string checkUser1 = "select RoleId from UserData2 where UserName='" + txt1.Text + "'";
            //                SqlCommand cmd1 = new SqlCommand(checkUser1, cn);
            //                int temp2 = Convert.ToInt32(cmd1.ExecuteScalar().ToString());
            //                if (temp2 == 1)
            //                {
            //                    Session["New"] = txt1.Text;
            //                    Response.Redirect("CompanyList.aspx");
            //                }
            //                else if(temp2==2)
            //                {
            //                    Response.Redirect("CompanyList1.aspx");
            //                }
            //                else
            //                {
            //                    Response.Write("Invalid User");
            //                }
            //            }
            //            else
            //            {
            //                Response.Write("Password Incorrect");
            //            }
            //        }
            //        else
            //        {
            //            Response.Write("UserName Incorrect");
            //        }
            
        }
    }
}    