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
    public partial class DeleteUser : System.Web.UI.Page
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

                }
            }

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int Id = int.Parse(txtId.Value);
            User user = new User();
            user.Id = Id;

            IUserDataProvider udp = DataProvider.UserDataProvider;
            udp.DeleteUser(user);
            string str = "<span style='color:red' > User has been Deleted!!!!!!!</span>";
            Response.Write(str);
        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserList.aspx");
        }
    }
}