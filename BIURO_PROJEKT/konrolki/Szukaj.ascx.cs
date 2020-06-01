using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BIURO_PROJEKT
{
    public partial class Szukaj : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void WyszukajButton_Click(object sender, EventArgs e)
        {
            string url = String.Format("~/WynikiWyszukiwania.aspx?Szukaj={0}", wyszukiwanieTextBox.Text);
            Response.Redirect(url);
        }
    }
}