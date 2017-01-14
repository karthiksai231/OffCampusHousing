using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OffCampusHousing.Commerce;

namespace OffCampusHousing.DAL
{
   public class DataProvider
    {
        public static ICompanyDataProvider CompnayDataProvider
        {
            get
            {
                return new CompanyDataProvider();
            }
        }
        public static IUserDataProvider UserDataProvider
        {
            get
            {
                return new UserDataProvider();
            }
        }
    }
}
