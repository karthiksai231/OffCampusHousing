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
    public partial class EditUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                int id = int.Parse(Request.QueryString["Id"].ToString());
                if (id > 0)
                {
                    IUserDataProvider udp = DataProvider.UserDataProvider;
                    User user = udp.Get(id);
                    txtId.Value = user.Id.ToString();
                    txtUserName.Text = user.UserName;
                    txtPassword.Text = user.Password;
                    txtroleId.Text = user.RoleId.ToString();
                    txtState.Text = user.State;
                    

                }
            }

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int Id = int.Parse(txtId.Value);
            string name = txtUserName.Text;
            string password = txtPassword.Text;
            string roleId = txtroleId.Text;
            string state = txtState.Text;

            User user = new User();
            user.Id = Id;
            user.UserName = name;
            user.Password = password;
            user.RoleId = int.Parse(roleId.ToString());
            user.State = state;
            


            IUserDataProvider udp = DataProvider.UserDataProvider;
            udp.UpdateUser(user);
        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserList.aspx");
        }
    }
}