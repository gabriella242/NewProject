using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Product_view : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int prodID = int.Parse(Request["pid"]);
        int i = 0;

        Session["ProdID"] = prodID;

        var ArrProd = Application["ArrP"] as List<products>;
        List<products> newarr = new List<products>();

        for (i=0; i<ArrProd.Count; i++)
        {
            if (ArrProd[i].pid == prodID)
            {
                newarr.Insert(0, ArrProd[i]);
                RptProd.DataSource = newarr;
                RptProd.DataBind();
            }
        }
      
    }
}