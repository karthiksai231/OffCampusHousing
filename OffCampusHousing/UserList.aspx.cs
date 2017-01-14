using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OffCampusHousing.Commerce;
using OffCampusHousing.DAL;

namespace OffCampusHousing
{
    public partial class UserList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            IUserDataProvider udp = DataProvider.UserDataProvider;
            var users = udp.GetAll();


            gvUser.DataSource = users;
            gvUser.DataBind();
        }

        protected void gvUser_RowEditing(object sender, GridViewEditEventArgs e)
        {
            var id = int.Parse(gvUser.DataKeys[e.NewEditIndex].Value.ToString());
            Response.Redirect("EditUser.aspx?Id=" + id, true);
        }

        protected void gvUser_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            var id = int.Parse(gvUser.DataKeys[e.RowIndex].Value.ToString());
            Response.Redirect("DeleteUser.aspx?Id=" + id, true);
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }

        protected void btnAdmin_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminPage.aspx");
        }
    }
}