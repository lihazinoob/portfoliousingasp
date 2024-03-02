using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Portfolio_Final
{
    public partial class AcademicsList : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
           if(!IsPostBack)
            {
                
               
                    SqlConnection con = new SqlConnection(strcon);
                    con.Open();

                    SqlDataAdapter sda = new SqlDataAdapter("SELECT [degreename],[inst_name],[desciption] FROM academics_qualification", con);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);

                    academicsList.DataSource = dt;
                    academicsList.DataBind();

                    con.Close();
                
            }
        }
    }
}