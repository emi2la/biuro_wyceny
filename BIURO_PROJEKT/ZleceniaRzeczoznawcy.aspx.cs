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
            BIURODataContext db = new BIURODataContext();
            IQueryable<ZLECENIE> query = from z in db.ZLECENIE
                                         where z.RZECZOZNAWCA_ID.Equals(queryParam)

                                         select z;


            if (query.Any())
            {
                ZleceniaRzeczoznawcyGridView.DataSource = query;
                ZleceniaRzeczoznawcyGridView.DataBind();

            }
            else
            {
                BrakZlecenLabel.Text = $"Rzeczoznawca nie wykonał jeszcze żadnych zleceń";
            }
        }
    }
}