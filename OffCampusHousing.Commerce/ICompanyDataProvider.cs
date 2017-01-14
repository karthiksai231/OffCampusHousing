using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OffCampusHousing.Commerce
{
   public interface ICompanyDataProvider
    {
        void InsertCompany(Company company);
        void UpdateCompany(Company company);
        void DeleteCompany(Company company);
        List<Company> GetAll();
        Company Get(int id);
    }
}
