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
    public partial class AddUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string name = txtUserName.Text;
            string password = txtPassword.Text;
            int roleId = int.Parse(txtRoleId.Value);
            string state = txtState.Text;
                     

            User user = new User();
            user.UserName = name;
            user.Password = password;
            user.RoleId = roleId;
            user.State = state;

            IUserDataProvider udp = DataProvider.UserDataProvider;
            udp.InsertUser(user);

            int id = user.Id;
            Response.Redirect(string.Format("UserDetails.aspx?Id={0}&Name{1}", id, user.UserName), true);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserList.aspx");
        }
    }
}