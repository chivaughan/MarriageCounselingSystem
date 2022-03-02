using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MarriageCounselingSystem
{
    public partial class Calvary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void grvClients_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            // If it's the view button that was clicked
            if (e.CommandName.Equals("View"))
            {
                Label lblID = (Label)grvClients.Rows[int.Parse(e.CommandArgument.ToString())].FindControl("lblID");
                Session["ID"] = lblID.Text;
                Server.Transfer("ClientResult.aspx");
            }
        }
    }
}