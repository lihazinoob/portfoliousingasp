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
    public partial class MainPage : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string query = string.Format("select [degreename] , [desciption] FROM [academics_qualification]");
                SqlConnection con = new SqlConnection(strcon);

                SqlCommand command = new SqlCommand(query, con);

                con.Open();
                SqlDataReader reader=  command.ExecuteReader();
                repeateracademics.DataSource = reader;
                repeateracademics.DataBind();

                con.Close();

            }
        }
    }
}