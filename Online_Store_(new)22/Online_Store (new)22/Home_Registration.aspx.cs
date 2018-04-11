using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebSite1_WebSite1_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void button_Click(object sender, EventArgs e)
    {
        OleDbConnection conn = new OleDbConnection();
        conn.ConnectionString = @"Provider=Microsoft.ACE.OLEDB.12.0;" + @"Data source= |DataDirectory|\\Database2.accdb";

        String username = txt_new_user.Text;
        String password = txt_new_pass.Text;
        string eml = email.Text;
        string nm = name.Text;

        string sql = ("INSERT INTO Customers(username,[password],cust_name,email)VALUES(@username,@password,@nm,@eml)");
        OleDbCommand cmd = new OleDbCommand();
        cmd.CommandText = sql;
        cmd.Connection = conn;
        cmd.Parameters.Add("@username", OleDbType.VarChar).Value = username;
        cmd.Parameters.Add("@password", OleDbType.VarChar).Value = password;
        cmd.Parameters.Add("@nm", OleDbType.VarChar).Value = nm;
        cmd.Parameters.Add("@eml", OleDbType.VarChar).Value = eml;

        conn.Open();

        if (conn.State == ConnectionState.Open)
        {
            ltrmsg.Text = cmd.ExecuteNonQuery().ToString() + " record has been added successfully!";
            Session["Login"] = nm;
            conn.Close();

            Response.Redirect("Product_List.aspx");
            
        }
        else
        {
            ltrmsg.Text = "Registration Failed";
            conn.Close();
        }
    }

    protected void loginbtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
}

