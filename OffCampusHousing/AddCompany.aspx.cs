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
    public partial class AddCompany : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string phone = txtPhone.Text;
            string email = txtEmail.Text;
            string address = txtAddress.Text;
            string description = txtDescription.Text;

            Company company = new Company();
            company.Name = name;
            company.Phone = phone;
            company.Email = email;
            company.Address = address;
            company.Description = description;


            ICompanyDataProvider cdp = DataProvider.CompnayDataProvider;
            cdp.InsertCompany(company);

            int id = company.Id;
            Response.Redirect(string.Format("CompanyDetails.aspx?Id={0}&Name{1}", id, company.Name), true);
        }

        //protected void btnEdit_Click(object sender, EventArgs e)
        //{
            
        //    Response.Redirect(string.Format("EditCompany.aspx"));
        //}
    }
    
}