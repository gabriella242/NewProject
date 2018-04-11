using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class My_Cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var Cart = Session["Cart"] as cart;
        item[] arr = new item[Cart.Size];

        for (var i = 0; i < Cart.Size; i++)
        {
            arr[i] = Cart.ArrItem[i];
        }

        RptProd.DataSource = arr;
        RptProd.DataBind();

        var total = (int)Session["tot"];
        string parameter =(string) Request["para"];

        if (parameter == "11")
        {
            tot.Text = null;
            tot.Text += total;
            Session["order_total"] = tot.Text;
        }
        else
        {
            tot.Text += total;
            Session["order_total"] = tot.Text;
        }
       
    }
    
}

