using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Portfolio_Final
{
   
    public partial class UpdateAcademics : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            string deg = Request.QueryString["degreename"];

           // Response.Write(deg);



            try
            {
                SqlConnection con = new SqlConnection(strcon);
                con.Open();
                string q = "SELECT * FROM academics_qualification WHERE[degreename] =@deg";
                SqlCommand cmd = new SqlCommand(q, con);
                cmd.Parameters.AddWithValue("@deg",deg);
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    reader.Read();

                    textbox1.Text = reader.GetValue(0).ToString();
                    textbox2.Text = reader.GetValue(1).ToString();
                    textbox3.Text = reader.GetValue(2).ToString();

                }





                con.Close();

            }
            catch (Exception)
            {

                throw;
            }

        }
    }
}