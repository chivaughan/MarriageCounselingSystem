using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace MarriageCounselingSystem
{
    public partial class ClientResult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                int id = int.Parse(Session["ID"].ToString());
                //Load the client's result
                string connString = System.Configuration.ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
                SqlConnection conn;
                string selectString = @"SELECT * FROM ClientInfo WHERE ID LIKE " + id;
                SqlDataAdapter da;
                DataTable dt;
                conn = new SqlConnection(connString);
                conn.Open();
                da = new SqlDataAdapter(selectString, conn);
                dt = new DataTable();
                da.Fill(dt);
                lblShowingResult.InnerText = "Showing Test Result for " + dt.Rows[0][1].ToString();
                lblFullName.Text = dt.Rows[0][1].ToString();
                lblGender.Text = dt.Rows[0][2].ToString();
                lblAge.Text = dt.Rows[0][3].ToString();
                lblContactAddress.Text = dt.Rows[0][4].ToString();
                lblPhoneNumber.Text = dt.Rows[0][5].ToString();
                lblEmail.Text = dt.Rows[0][6].ToString();
                lblDate.Text = dt.Rows[0][7].ToString();
                lblResult.Text = dt.Rows[0][8].ToString();
                da.Dispose();
                dt.Dispose();
            }
            catch (Exception)
            {
                Response.Redirect("Default.aspx");
            }
        }
    }
}