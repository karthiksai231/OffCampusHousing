using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using OffCampusHousing.Commerce;
using OffCampusHousing.DAL;
using System.Configuration;
using System.Text;

namespace OffCampusHousing
{
    public partial class UserQuestions : System.Web.UI.Page
    {
        StringBuilder table = new StringBuilder();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["OffCampusHousing"].ConnectionString);
                cn.Open();
                string list = "select * from [UserQuestions]";
                SqlCommand cmd = new SqlCommand(list,cn);
                SqlDataReader rd = cmd.ExecuteReader();
                table.Append("<table align='center' border='0'>");
                table.Append("<tr><th>id</th><th>Name</th><th>Email</th><th>Mobile</th><th>Questions</th>");
                table.Append("</tr>");


                if(rd.HasRows)
                {
                    while(rd.Read())
                    {
                        table.Append("<tr>");
                        table.Append("<td>"+rd[0]+"</td>");
                        //table.Append("</tr>");
                        //table.Append("<tr>");
                        table.Append("<td>" + rd[1] + "</td>");
                        //table.Append("</tr>");
                        //table.Append("<tr>");
                        table.Append("<td>" + rd[2] + "</td>");
                       // table.Append("</tr>");
                        //table.Append("<tr>");
                        table.Append("<td>" + rd[3] + "</td>");
                       // table.Append("</tr>");
                        //table.Append("<tr>");
                        table.Append("<td>" + rd[4] + "</td>");
                        table.Append("</tr>");
                    }
                }
                table.Append("</table>");
                PlaceHolder1.Controls.Add(new Literal { Text = table.ToString() });
                rd.Close();


            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageUsers.aspx");
        }
    }
}