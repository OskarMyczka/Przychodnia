using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Przychodnia_online
{
    public partial class Pac_index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (GridView1 != null && labelImie!=null && labelNaz!=null && labelUro != null && labelPESEL != null && labelTel != null && labelMail != null && labelAdres != null)
            {
                GridView1.Visible = false;

                labelImie.InnerText = GridView1.Rows[0].Cells[0].Text;
                labelNaz.InnerText = GridView1.Rows[0].Cells[1].Text;
                labelUro.InnerText = GridView1.Rows[0].Cells[2].Text.Substring(0, (GridView1.Rows[0].Cells[2].Text.Length - 8));
                labelPESEL.InnerText = GridView1.Rows[0].Cells[3].Text;
                labelTel.InnerText = GridView1.Rows[0].Cells[4].Text;
                labelMail.InnerText = GridView1.Rows[0].Cells[5].Text;
                labelAdres.InnerText = GridView1.Rows[0].Cells[6].Text;
            }
            
        }

        protected void Przycisk_wizyty(object sender, EventArgs e)
        {
            Response.Redirect("/WybierzDate.aspx?id=" + Request.QueryString["id"]);

        }

        protected void PrzyciskMoje(object sender, EventArgs e)
        {
            Response.Redirect("/MojeWizyty.aspx?id=" + Request.QueryString["id"]);

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

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