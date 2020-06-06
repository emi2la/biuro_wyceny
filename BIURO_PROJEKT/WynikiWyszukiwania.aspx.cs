using BIURO_PROJEKT.App_Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BIURO_PROJEKT
{
    public partial class WynikiWyszukiwania : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string parametrWyszukiwania = Request.QueryString["Szukaj"];
            BIURODataContext db = new BIURODataContext();
            var query = (from z in db.ZLECENIE
                         join r in db.RZECZOZNAWCA on z.RZECZOZNAWCA_ID equals r.ID
                         where z.NAZWISKO.StartsWith(parametrWyszukiwania)
                         || r.NAZWISKO.StartsWith(parametrWyszukiwania)
                         || z.MIASTO.StartsWith(parametrWyszukiwania)
                         || z.ADRES.StartsWith(parametrWyszukiwania)
                         select z);

            if (!query.Any())
            {
                BrakWynikowLabel.Text = $"Nie znaleziono żadnych zleceń dla: {parametrWyszukiwania}";

            }

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}