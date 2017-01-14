using OffCampusHousing.Commerce;
using OffCampusHousing.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OffCampusHousing
{
    public partial class EditCompany : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack==false)
            {
                int id = int.Parse(Request.QueryString["Id"].ToString());
                if(id>0)
                {
                    ICompanyDataProvider cdp = DataProvider.CompnayDataProvider;
                    Company company = cdp.Get(id);
                    txtId.Value = company.Id.ToString();
                    txtName.Text = company.Name;
                    txtPhone.Text = company.Phone;
                    txtEmail.Text = company.Email;
                    txtAddress.Text = company.Address;
                    txtDescription.Text = company.Description;

                }
            }

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int Id = int.Parse(txtId.Value);
            string name = txtName.Text;
            string phone = txtPhone.Text;
            string email = txtEmail.Text;
            string address = txtAddress.Text;
            string description = txtDescription.Text;

            Company company = new Company();
            company.Id = Id;
            company.Name = name;
            company.Phone = phone;
            company.Email = email;
            company.Address = address;
            company.Description = description;


            ICompanyDataProvider cdp = DataProvider.CompnayDataProvider;
            cdp.UpdateCompany(company);
        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            Response.Redirect("CompanyList.aspx");
        }
    }
}