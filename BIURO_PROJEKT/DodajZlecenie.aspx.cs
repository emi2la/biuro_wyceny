using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BIURO_PROJEKT
{
    public partial class DodajZlecenie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DodajZlecenieButtonClick(object sender, EventArgs e)
        {
            String constr = ConfigurationManager.ConnectionStrings["APIConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                String sql = $"Insert into ZLECENIE VALUES('{NumerTextBox.Text}','{ImieTextBox.Text}','{NazwiskoTextBox.Text}','{EmailTextBox.Text}') select SCOPE_IDENTITY();";
                SqlCommand cmd = new SqlCommand(sql, con);
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Redirect("/Rzeczoznawca.aspx");
            }
        }


    }
}