using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OffCampusHousing
{
    public partial class UserDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblId.Text = Request.QueryString["Id"].ToString();
            string str = "<span style='color:red'>User Added Successfully!!!!!!</span>";
            Response.Write(str);
        }

        protected void btnAddMore_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddUser.aspx");
        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserList.aspx");
        }
    }
}