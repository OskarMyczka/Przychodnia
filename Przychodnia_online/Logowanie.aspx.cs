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
    public partial class Logowanie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Loguj_Click(object sender, EventArgs e)
        {
            string pesel = InputPesel.Text;
            string haslo = InputHaslo.Text;
            string connect = ConfigurationManager.ConnectionStrings["conString"].ConnectionString;
            GridView temp = new GridView();
            using (SqlConnection con = new SqlConnection(connect))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand("SELECT ID_PACJENT FROM PACJENT WHERE PAC_PESEL = @PESEL AND PAC_HASLO = @HASLO", con))
                {
                    com.Parameters.AddWithValue("@PESEL", pesel);
                    com.Parameters.AddWithValue("@HASLO", haslo);

                    SqlDataReader reader = com.ExecuteReader();
                    if (reader.HasRows)
                    {
                        temp.DataSource = reader;
                        temp.DataBind();
                        Response.Redirect("/Pac_index.aspx?id=" + temp.Rows[0].Cells[0].Text);
                    }
                    else
                    {
                        Logowanie_lekarza();
                    }

                }
            }

            
            
        }
        protected void Logowanie_lekarza()
        {
            string pesel = InputPesel.Text;
            string haslo = InputHaslo.Text;
            string connect = ConfigurationManager.ConnectionStrings["conString"].ConnectionString;
            GridView temp = new GridView();
            using (SqlConnection con = new SqlConnection(connect))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand("SELECT ID_LEKARZ FROM LEKARZ WHERE LEK_PESEL = @PESEL AND LEK_HASLO = @HASLO", con))
                {
                    com.Parameters.AddWithValue("@PESEL", pesel);
                    com.Parameters.AddWithValue("@HASLO", haslo);

                    SqlDataReader reader = com.ExecuteReader();
                    if (reader.HasRows)
                    {
                        temp.DataSource = reader;
                        temp.DataBind();
                        Response.Redirect("/Lek_index.aspx?id=" + temp.Rows[0].Cells[0].Text);
                    }
                    else
                    {
                        //Złe hasło
                    }

                }
            }
        }
    }

    
}