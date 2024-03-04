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
    public partial class adminportfolio : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string query = string.Format("select [degreename] , [desciption] FROM [academics_qualification]");

                SqlConnection con = new SqlConnection(strcon);

                SqlCommand command = new SqlCommand(query, con);

                con.Open();
                SqlDataReader reader = command.ExecuteReader();
                repeateracademics.DataSource = reader;
                repeateracademics.DataBind();
                reader.Close();

                con.Close();


                string projectq = string.Format("select [project_name],[project_description],[project_link] FROM [table_project]");
                SqlConnection con2 = new SqlConnection(strcon);
                SqlCommand projectcommand = new SqlCommand(projectq, con2);
                con2.Open();

                SqlDataReader projectreader = projectcommand.ExecuteReader();
                repeaterprojects.DataSource = projectreader;
                repeaterprojects.DataBind();
                projectreader.Close();
                con2.Close();


                string testimonialquery = string.Format("select [full_name],[designation],[institution],[rate],[comment] FROM [rate1]");
                SqlConnection con4 = new SqlConnection(strcon);
                SqlCommand testimonialCommand = new SqlCommand(testimonialquery, con4);
                con4.Open();

                SqlDataReader testreader = testimonialCommand.ExecuteReader();
                repeatertestimonial.DataSource = testreader;
                repeatertestimonial.DataBind();
                testreader.Close();
                con4.Close();
            }
        }

        protected void updateacademics_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AcademicsList.aspx");
        }
        protected void admin_logout(object sender, EventArgs e)
        {
            Response.Redirect("~/MainPage.aspx");
        }
    }
}