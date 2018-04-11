using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class Products_List : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            var ArrProd = Application["ArrP"] as List<products>;
            RptProd.DataSource = ArrProd;
            RptProd.DataBind();
        }
        if (Session["Login"] == null)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "popup" , "$('#enquirypopup').modal('show');", true);
        }
    }

    protected void Selection_Ch(Object sender, EventArgs e)
    {
        var ArrProdli = Application["ArrP"] as List<products>;
        List<products> newarr1 = new List<products>();


        int i = 0, j = 0;
        int theStatus = Convert.ToInt32(pr_search.SelectedValue);

        if (theStatus == 500)
        {
            for (i = 0, j = 0; i < ArrProdli.Count; i++)
            {
                if (ArrProdli[i].price <= 500)
                {
                    newarr1.Insert(j, ArrProdli[i]);
                    j++;
                }
            }

            RptProd.DataSource = newarr1;
            RptProd.DataBind();
        }
        else if (theStatus == 1)
        {
            RptProd.DataSource = ArrProdli;
            RptProd.DataBind();
        }
        else if (theStatus == 1501)
        {
            for (i = 0, j = 0; i < ArrProdli.Count; i++)
            {
                if (ArrProdli[i].price >= 1500)
                {
                    newarr1.Insert(j, ArrProdli[i]);
                    j++;
                }
            }

            RptProd.DataSource = newarr1;
            RptProd.DataBind();
        }
        else if (theStatus == 1500)
        {
            for (i = 0, j = 0; i < ArrProdli.Count; i++)
            {
                if (ArrProdli[i].price > 500 && ArrProdli[i].price <= 1500)
                {
                    newarr1.Insert(j, ArrProdli[i]);
                    j++;
                }
            }

            RptProd.DataSource = newarr1;
            RptProd.DataBind();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string ConnStr = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\\database.accdb";
        OleDbConnection Conn = new OleDbConnection(ConnStr);
        Conn.Open();
        OleDbCommand Cmd = new OleDbCommand();
        string Sql = "Select * From Products";
        Cmd.Connection = Conn;
        Cmd.CommandText = Sql;
        List<products> newarr = new List<products>();
        var ArrProdli = Application["ArrP"] as List<products>;
        int i = 0, j = 0;
        OleDbDataReader rd = Cmd.ExecuteReader();

        while (rd.Read())
        {
            if (filter.Value  == (string)rd["ProdName"])
            {
                    newarr.Insert(i, ArrProdli[j]); 
                    i++;
             }
            j++;
        }
        Conn.Close();
        if (i == 0)
        {
            msg.Text = "Please enter the full name of the telescope";
        }
        else
        {
            RptProd.DataSource = newarr;
            RptProd.DataBind();
        }
    }


    protected void Button1_Click2(object sender, EventArgs e)
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

            Response.Redirect("Product_List.aspx");
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
