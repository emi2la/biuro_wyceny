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
                         where z.NAZWISKO.Contains(parametrWyszukiwania)
                         || r.NAZWISKO.Contains(parametrWyszukiwania)
                         || z.MIASTO.Contains(parametrWyszukiwania)
                         || z.ADRES.Contains(parametrWyszukiwania)
                         select z);

            if (!query.Any())
            {
                BrakWynikowLabel.Text = $"Nie znaleziono żadnych zleceń dla: {parametrWyszukiwania}";

            }

        }

    }
}