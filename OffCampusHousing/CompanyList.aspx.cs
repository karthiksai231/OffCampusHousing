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
    public partial class CompanyList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ICompanyDataProvider cdp = DataProvider.CompnayDataProvider;
            var companies = cdp.GetAll();


            gvCompany.DataSource = companies;
            gvCompany.DataBind();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddCompany.aspx");
        }
       
        protected void gvCompany_RowEditing(object sender, GridViewEditEventArgs e)
        {
            var id = int.Parse(gvCompany.DataKeys[e.NewEditIndex].Value.ToString());
            Response.Redirect("EditCompany.aspx?Id=" + id, true);
        }

        protected void gvCompany_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            var id = int.Parse(gvCompany.DataKeys[e.RowIndex].Value.ToString());
            Response.Redirect("DeleteCompany.aspx?Id=" + id, true);
        }
    }
}