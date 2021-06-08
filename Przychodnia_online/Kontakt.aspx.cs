using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Przychodnia_online
{
    public partial class Kontakt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }
        protected void Przycisk_wizyty(object sender, EventArgs e)
        {
            Response.Redirect("/WybierzDate.aspx?id=" + Request.QueryString["id"]);

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void PrzyciskMoje(object sender, EventArgs e)
        {
            Response.Redirect("/MojeWizyty.aspx?id=" + Request.QueryString["id"]);

        }

        protected void Przycisk_kontakt(object sender, EventArgs e)
        {
            Response.Redirect("/Kontakt.aspx?id=" + Request.QueryString["id"]);

        }

        protected void Przycisk_menu(object sender, EventArgs e)
        {
            Response.Redirect("/Pac_index.aspx?id=" + Request.QueryString["id"]);

        }


    }
}