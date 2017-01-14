using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OffCampusHousing.Commerce;

namespace OffCampusHousing.DAL
{
   internal class UserDataProvider : IUserDataProvider
    {

        public void InsertUser(User user)
        {
            string connectionString = ConnectionString.Current;
            SqlConnection cn = new SqlConnection(connectionString);
            cn.Open();
            string commandText = "InsertUser";
            SqlCommand cmd = new SqlCommand(commandText, cn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter name = new SqlParameter("UserName", user.UserName);
          //  var email = new SqlParameter("Email", user.Email);
            var password = new SqlParameter("Password", user.Password);
            var state = new SqlParameter("State", user.State);
            SqlParameter roleId = new SqlParameter("RoleId",user.RoleId);
            SqlParameter id = new SqlParameter("Id", System.Data.SqlDbType.Int);
            id.Direction = System.Data.ParameterDirection.Output;
            cmd.Parameters.Add(name);
           // cmd.Parameters.Add(email);
            cmd.Parameters.Add(password);
            cmd.Parameters.Add(roleId);
            cmd.Parameters.Add(state);
            
            cmd.Parameters.Add(id);
            cmd.ExecuteNonQuery();
            var userId = int.Parse(id.Value.ToString());
            user.Id = userId;


        }

        public void UpdateUser(User user)
        {
            string connectionString = ConnectionString.Current;
            SqlConnection cn = new SqlConnection(connectionString);
            cn.Open();
            string commandText = "UpdateUser";
            SqlCommand cmd = new SqlCommand(commandText, cn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter id = new SqlParameter("Id", user.Id);
            SqlParameter name = new SqlParameter("UserName", user.UserName);
           // var email = new SqlParameter("Email", user.Email);
            var password = new SqlParameter("Password", user.Password);
            var state = new SqlParameter("State", user.State);
             SqlParameter roleId = new SqlParameter("RoleId", user.RoleId);
            //SqlParameter id = new SqlParameter("Id", User.Id);
            cmd.Parameters.Add(id);
            cmd.Parameters.Add(name);
           // cmd.Parameters.Add(email);
            cmd.Parameters.Add(password);
            cmd.Parameters.Add(roleId);
            cmd.Parameters.Add(state);
           
            //cmd.Parameters.Add(id);
            cmd.ExecuteNonQuery();
            // throw new NotImplementedException();
        }
        public void DeleteUser(User user)
        {
            string connectionString = ConnectionString.Current;
            SqlConnection cn = new SqlConnection(connectionString);
            cn.Open();
            string commandText = "DeleteUser";
            SqlCommand cmd = new SqlCommand(commandText, cn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter id = new SqlParameter("Id", user.Id);
            cmd.Parameters.Add(id);
            cmd.ExecuteNonQuery();
            // throw new NotImplementedException();
        }
        public List<User> GetAll()
        {
            List<User> result = new List<User>();
            string connectionString = ConnectionString.Current;
            SqlConnection cn = new SqlConnection(connectionString);
            cn.Open();
            string commandText = "SelectUser";
            SqlCommand cmd = new SqlCommand(commandText, cn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                var id = int.Parse(reader["Id"].ToString());
                var name = reader["UserName"].ToString();
               // var email = reader["Email"].ToString();
                var password = reader["Password"].ToString();
                var roleId = int.Parse(reader["RoleId"].ToString());
                var state = reader["State"].ToString();
                

                var user = new User();
                user.Id = id;
                user.UserName = name;
               // user.Email = email;
                user.Password = password;
                user.RoleId = roleId;
                user.State = state;
               
                result.Add(user);
            }
            return result;

            //throw new NotImplementedException();
        }

        public User Get(int id)
        {
            return GetAll().Where(c => c.Id == id).FirstOrDefault();
            //throw new NotImplementedException();
        }
    }
}
