using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OffCampusHousing.Commerce
{
    public interface IUserDataProvider
    {
        void InsertUser(User user);
        void UpdateUser(User user);
        void DeleteUser(User user);
        List<User> GetAll();
        User Get(int id);
    }
}
  