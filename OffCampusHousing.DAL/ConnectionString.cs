using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OffCampusHousing.DAL
{
   public class ConnectionString
    {
        public static string Current
        {
            get
            {
                return ConfigurationManager.ConnectionStrings["OffCampusHousing"].ConnectionString;
            }
        }
    }
}
