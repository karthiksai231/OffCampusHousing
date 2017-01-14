using OffCampusHousing.Commerce;
using OffCampusHousing.DAL;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OffCampusHousing
{
    public partial class CompanyList1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                //this.BindGrid();

                ICompanyDataProvider cdp = DataProvider.CompnayDataProvider;
                var companies = cdp.GetAll();


                gv1.DataSource = companies;
                gv1.DataBind();
            }
        }
        private void BindGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["OffCampusHousing"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "SELECT Id,Name, Phone, Email,Address,Description FROM Companies WHERE Name LIKE '%' + @Name + '%'";
                    cmd.Connection = con;
                    //cmd.Parameters.AddWithValue("@Name", txtSearch.Text.Trim());
                    cmd.Parameters.AddWithValue("@Name", txtSearch.Value.Trim());
                    DataTable dt = new DataTable();
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        sda.Fill(dt);
                        gv1.DataSource = dt;
                        gv1.DataBind();
                    }
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("LoginPage.aspx?status=logout");
            

        }

        protected void gv1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                //e.Row.Cells[0].Text = Regex.Replace(e.Row.Cells[0].Text, txtSearch.Text.Trim(), delegate (Match match)
                e.Row.Cells[0].Text = Regex.Replace(e.Row.Cells[0].Text, txtSearch.Value.Trim(), delegate (Match match)
                {
                    return string.Format("<span style = 'background-color:#D9EDF7'>{0}</span>", match.Value);
                }, RegexOptions.IgnoreCase);
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            this.BindGrid();
        }
        protected void btnSearch1_Click(object sender, EventArgs e)
        {
            this.BindGrid(); 
        }
    }
}