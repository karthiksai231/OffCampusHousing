using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OffCampusHousing.Commerce;
using System.Data;
using System.Data.SqlClient;
namespace OffCampusHousing.DAL
{
    internal class CompanyDataProvider : ICompanyDataProvider
    {
        public void InsertCompany(Company company)
        {
            string connectionString = ConnectionString.Current;
            SqlConnection cn = new SqlConnection(connectionString);
            cn.Open();
            string commandText = "InsertCompany";
            SqlCommand cmd = new SqlCommand(commandText, cn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter name = new SqlParameter("Name", company.Name);
            SqlParameter phone = new SqlParameter("Phone", company.Phone);
            var email = new SqlParameter("Email",company.Email);
            var address = new SqlParameter("Address",company.Address);
            var description = new SqlParameter("Description",company.Description);
            SqlParameter id = new SqlParameter("Id",System.Data.SqlDbType.Int);
            id.Direction = System.Data.ParameterDirection.Output;
            cmd.Parameters.Add(name);
            cmd.Parameters.Add(phone);
            cmd.Parameters.Add(email);
            cmd.Parameters.Add(address);
            cmd.Parameters.Add(description);
            cmd.Parameters.Add(id);
            cmd.ExecuteNonQuery();
            var companyId = int.Parse(id.Value.ToString());
            company.Id = companyId;


        }

        public void UpdateCompany(Company company)
        {
            string connectionString = ConnectionString.Current;
            SqlConnection cn = new SqlConnection(connectionString);
            cn.Open();
            string commandText = "UpdateCompanyy";
            SqlCommand cmd = new SqlCommand(commandText, cn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter id = new SqlParameter("Id", company.Id);
            SqlParameter name = new SqlParameter("Name", company.Name);
            SqlParameter phone = new SqlParameter("Phone", company.Phone);
            var email = new SqlParameter("Email", company.Email);
            var address = new SqlParameter("Address", company.Address);
            var description = new SqlParameter("Description", company.Description);
            //SqlParameter id = new SqlParameter("Id", company.Id);
            cmd.Parameters.Add(id);
            cmd.Parameters.Add(name);
            cmd.Parameters.Add(phone);
            cmd.Parameters.Add(email);
            cmd.Parameters.Add(address);
            cmd.Parameters.Add(description);
            //cmd.Parameters.Add(id);
            cmd.ExecuteNonQuery();
           // throw new NotImplementedException();
        }
        public void DeleteCompany(Company company)
        {
            string connectionString = ConnectionString.Current;
            SqlConnection cn = new SqlConnection(connectionString);
            cn.Open();
            string commandText = "DeleteCompany";
            SqlCommand cmd = new SqlCommand(commandText, cn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter id = new SqlParameter("Id", company.Id);
            cmd.Parameters.Add(id);
            cmd.ExecuteNonQuery();
           // throw new NotImplementedException();
        }
        public List<Company> GetAll()
        {
           
            List<Company> result = new List<Company>();
            string connectionString = ConnectionString.Current;
            SqlConnection cn = new SqlConnection(connectionString);
            cn.Open();
            string commandText = "SelectCompany";
            SqlCommand cmd = new SqlCommand(commandText, cn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            SqlDataReader reader = cmd.ExecuteReader();
            while(reader.Read())
            {
                var id = int.Parse(reader["Id"].ToString());
                var name = reader["Name"].ToString();
                var phone = reader["Phone"].ToString();
                var email = reader["Email"].ToString();
                var address = reader["Address"].ToString();
                var description = reader["Description"].ToString();

                var company = new Company();
                company.Id = id;
                company.Name = name;
                company.Phone = phone;
                company.Email = email;
                company.Address = address;
                company.Description = description;
                result.Add(company);
            }
            return result;

            //throw new NotImplementedException();
        }

        public Company Get(int id)
        {
            return GetAll().Where(c=> c.Id==id).FirstOrDefault();
            //throw new NotImplementedException();
        }

       
       
    }
}
