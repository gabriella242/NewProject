using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class Login_test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home_Registration.aspx");
    }

    protected void login_button_Click(object sender, EventArgs e)
    {
        string Sql = "SELECT * FROM Customers where Customers.username='" + username.Text + "' AND Customers.password='" + password.Text + "'";
        OleDbConnection Conn = new OleDbConnection();
        Conn.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source =|DataDirectory|\\Database2.accdb";
        Conn.Open();

        OleDbCommand Cmd = new OleDbCommand();
        Cmd.Connection = Conn;
        Cmd.CommandText = Sql;
        OleDbDataReader rd;

        rd = Cmd.ExecuteReader();
        if (rd.Read())
        {
            Session["Login"] = rd["cust_name"].ToString();
            Conn.Close();

            Response.Redirect("Home.aspx");
        }
        else
        {
            Conn.Close();
            msg.Text = "Username/Password are not correct";
        }

        Conn.Close();
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
}