using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BIURO_PROJEKT
{
    public partial class Zlecenie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string parametrWyszukiwania = Request.QueryString["Szukaj"];
            //if (parametrWyszukiwania != null)
            //{
            //    AdventureWorksDataContext db = new AdventureWorksDataContext();
            //    var produkty = from p in db.Products
            //                   where p.Name.Contains(nazwa)
            //                   select p;
            //    WynikiWyszukiwaniaGridView.DataSource = produkty;
            //    WynikiWyszukiwaniaGridView.DataBind();
            //}

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}