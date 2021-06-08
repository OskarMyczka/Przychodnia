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
    public partial class WybierzDate : System.Web.UI.Page
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

        protected void WyborDaty(object sender, EventArgs e)
        {
            GridView1.Columns[6].Visible = true;
            GridView1.Columns[1].Visible = true;
            GridView1.DataBind();
            
            int idTerminu = Int32.Parse(GridView1.SelectedRow.Cells[6].Text);
            string conStr = ConfigurationManager.ConnectionStrings["conString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(conStr))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand("Update TERMINY SET DOSTEPNY = 0 WHERE ID_TERMINU = @id", con))
                {
                    com.Parameters.AddWithValue("@id", idTerminu);
                    com.ExecuteNonQuery();
                    
                }
                con.Close();
            }

            int idPacjent = Int32.Parse(Request.QueryString["id"]);
            string idLekarza = GridView1.SelectedRow.Cells[1].Text;
            using (SqlConnection con = new SqlConnection(conStr))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand("INSERT INTO WIZYTA (ID_PACJENT, ID_KARTAPACJENTA, ID_LEKARZ, ID_TERMINU, DATA, WIZ_OPIS) VALUES (@idPacjent, null, @idLekarza, @idTerminu, null, null)", con))
                {
                    com.Parameters.AddWithValue("@idPacjent", idPacjent);
                    com.Parameters.AddWithValue("@idLekarza", idLekarza);
                    com.Parameters.AddWithValue("@IdTerminu", idTerminu);
                    com.ExecuteNonQuery();

                }
            }
            GridView1.SelectedIndex = -1;
            GridView1.Columns[6].Visible = false;
            GridView1.Columns[1].Visible = false;
            GridView1.DataBind();
            
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
    }
}