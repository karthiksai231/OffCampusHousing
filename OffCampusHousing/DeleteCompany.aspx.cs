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
    public partial class DeleteCompany : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                int id = int.Parse(Request.QueryString["Id"].ToString());
                if (id > 0)
                {
                    ICompanyDataProvider cdp = DataProvider.CompnayDataProvider;
                    Company company = cdp.Get(id);
                    txtId.Value = company.Id.ToString();

                }
            }
        }

       
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int Id = int.Parse(txtId.Value);
            Company company = new Company();
            company.Id = Id;

            ICompanyDataProvider cdp = DataProvider.CompnayDataProvider;
            cdp.DeleteCompany(company);
            string str = "<span style='color:red' > Company has been Deleted!!!!!!!</span>";
            Response.Write(str);
        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            Response.Redirect("CompanyList.aspx");
        }
    }
}
