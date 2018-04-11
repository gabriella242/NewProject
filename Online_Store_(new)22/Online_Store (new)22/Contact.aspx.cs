using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void send_btn_Click(object sender, EventArgs e)
    {
        string Msg = "";
        Msg += "Name:" + " " + name.Text + "<br />";
        Msg += "Telephone:" + " " + phone.Text + "<br />";
        Msg += "Email:" + " " + email.Text + "<br />";
        Msg += "Message:" + "<br />" + contactmsg.Text + "<br />";
        GlobalFunc.SendEmail("*****@hotmail.com", "****@hotmail.com", "New Message from Website", Msg);
        email.Text = "";
        name.Text = "";
        phone.Text = "";
        contactmsg.Text = "";

        ltrmsg.Text = "Thank you for contacting us!";
    }
}