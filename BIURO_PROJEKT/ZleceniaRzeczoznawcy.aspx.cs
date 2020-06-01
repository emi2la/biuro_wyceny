using BIURO_PROJEKT.App_Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BIURO_PROJEKT
{
    public partial class ZleceniaRzeczoznawcy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string queryParam = Request.QueryString["RzeczoznawcaId"];
            string rzeczoznawca = getRzeczoznawca(queryParam);
            RzeczoznawcaLabel.Text = rzeczoznawca;

            BIURODataContext db = new BIURODataContext();
            IQueryable<ZLECENIE> query = from z in db.ZLECENIE
                                         where z.RZECZOZNAWCA_ID.Equals(queryParam)
                                         select z;


            if (!query.Any())
            {
                BrakZlecenLabel.Text = $"Rzeczoznawca {rzeczoznawca} nie wykonał jeszcze żadnych zleceń";
            }
        }

        private String getRzeczoznawca(String id)
        {
            BIURODataContext db = new BIURODataContext();
            return (from r in db.RZECZOZNAWCA where r.ID.Equals(id) select r.NAZWISKO + " " + r.IMIE).First().ToUpper();
        }
    }
}