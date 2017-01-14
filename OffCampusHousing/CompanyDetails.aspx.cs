using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OffCampusHousing
{
    public partial class CompanyDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblId.Text = Request.QueryString["Id"].ToString();
            string str = "<span style='color:red' > Company has been Added!!!!!!!</span>";
            Response.Write(str);
        }

        protected void btnAddMore_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddCompany.aspx");
        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            Response.Redirect("CompanyList.aspx");
        }
    }
}