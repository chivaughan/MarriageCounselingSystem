using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MarriageCounselingSystem
{
    public partial class Result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) // Do this the very first time the page loads
            {
                string canLoad = Session["canLoad"].ToString();
                Session.Remove("canLoad"); // Delete the session variable
                string advice = Session["advice"].ToString();
                Session.Remove("advice"); // Delete the session variable
                try
                {
                    if (canLoad == "Yes")
                    {
                        pResult.InnerText = advice; // Display the advice
                    }

                }
                catch (Exception)
                {
                    Response.Redirect("Default.aspx"); // Return to the home page if an error occurs
                }
            }
        }

        protected void btnGoBackToHomePage_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx"); // Go back to the home page
        }
    }
}