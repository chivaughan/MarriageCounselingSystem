using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MarriageCounselingSystem
{
    public partial class ClientInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTakeTest_Click(object sender, EventArgs e)
        {
            // Fetch the user's personal info
            Session["FullName"] = txtFullName.Text;
            Session["Gender"] = ddlGender.Value;
            Session["ContactAddress"] = txtContactAddress.Text;
            Session["PhoneNumber"] = txtPhoneNumber.Text;
            Session["Email"] = txtEmail.Text;
            // Transfer control to the Test page
            Server.Transfer("Test.aspx");
        }
    }
}