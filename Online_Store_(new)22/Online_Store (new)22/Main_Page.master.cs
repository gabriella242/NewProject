using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Main_Page : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Login"] == null)
        {
            btnSignIn.Visible = true;
            lblUserWelcome.Visible = false;
        }
        else
        {
            btnSignIn.Visible = false;
            lblUserWelcome.Visible = true;
            lblUserWelcome.Text = "Welcome " + Session["Login"] + "!";
        }


    }
    protected void btnSignIn_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}
