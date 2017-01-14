using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OffCampusHousing
{
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCompanies_Click(object sender, EventArgs e)
        {
            Response.Redirect("CompanyList.aspx");
        }

        protected void btnUsers_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageUsers.aspx");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            HttpCookie cookie = new HttpCookie("isLogout");
            cookie.Value = "1";
            //Expire the cookie in max 1 minute
            DateTime dtNow = DateTime.Now;
            TimeSpan tsMinute = new TimeSpan(0, 0, 1, 0);
            cookie.Expires = dtNow + tsMinute;
            Response.Cookies.Add(cookie);
            Response.Redirect("LoginPage.aspx");
            
        }
    }
}