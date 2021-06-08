using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Przychodnia_online
{
    public partial class MojeWizyty : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Przycisk_wizyty(object sender, EventArgs e)
        {
            Response.Redirect("/WybierzDate.aspx?id=" + Request.QueryString["id"]);

        }
        protected void Przycisk_kontakt(object sender, EventArgs e)
        {
            Response.Redirect("/Kontakt.aspx?id=" + Request.QueryString["id"]);

        }
        protected void Przycisk_menu(object sender, EventArgs e)
        {
            Response.Redirect("/Pac_index.aspx?id=" + Request.QueryString["id"]);

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void PrzyciskMoje(object sender, EventArgs e)
        {
            Response.Redirect("/MojeWizyty.aspx?id=" + Request.QueryString["id"]);

        }
        protected void AnulujWiz(object sender, EventArgs e)
        {
            GridView1.Columns[6].Visible = true;
            GridView1.Columns[1].Visible = true;
            GridView1.DataBind();

            int idTerminu = Int32.Parse(GridView1.SelectedRow.Cells[6].Text);
            string conStr = ConfigurationManager.ConnectionStrings["conString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(conStr))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand("Update TERMINY SET DOSTEPNY = 1 WHERE ID_TERMINU = @id", con))
                {
                    com.Parameters.AddWithValue("@id", idTerminu);
                    com.ExecuteNonQuery();

                }
                con.Close();
            }

            int wizyta = Int32.Parse(GridView1.SelectedRow.Cells[1].Text);
            using (SqlConnection con = new SqlConnection(conStr))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand("DELETE FROM WIZYTA WHERE ID_WIZYTA = @wizyta", con))
                {
                    com.Parameters.AddWithValue("@wizyta", wizyta);
                    com.ExecuteNonQuery();

                }
                con.Close();
            }

            GridView1.SelectedIndex = -1;
            GridView1.Columns[6].Visible = false;
            GridView1.Columns[1].Visible = false;
            GridView1.DataBind();
        }
    }
}