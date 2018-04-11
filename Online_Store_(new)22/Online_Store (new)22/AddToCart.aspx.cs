using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebSite1_AddToCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Request["Pid"] != null)
        {
            int Pid = int.Parse(Request["Pid"]);
            string whattodo = (string)(Request["op"]);
            int sum = 0;

            if (whattodo == "remove")
            {
                var car = Session["Cart"] as cart;
                car.RemoveFromCart(Pid);

                var ArrProd = Application["ArrP"] as List<products>;
                for (var i = 0; i < ArrProd.Count; i++)
                if ( ArrProd[i].pid == Pid)
                {
                    sum += ArrProd[i].price;
                    Session["tot"] = Convert.ToInt32(Session["tot"]) - sum;

                }
                Response.Redirect("My_Cart.aspx?para=11");
            }
            else if(whattodo== "empty")
            {
                var car = Session["Cart"] as cart;
                car.EmptyCart();
                Response.Redirect("Product_List.aspx");
            }
            else
            {
                var ArrProd = Application["ArrP"] as List<products>;

                for (var i = 0; i < ArrProd.Count; i++)
                {
                    if (ArrProd[i].pid == Pid)
                    {
                        var Cart = Session["Cart"] as cart;
                        if (Cart == null)
                        {
                            Cart = new cart();
                        }
                        item tmp = new item(Pid, ArrProd[i].Pname, 1, ArrProd[i].Price, ArrProd[i].Picname, ArrProd[i].shortdesc, ArrProd[i].longdesc);
                        sum += ArrProd[i].price;
                        Session["tot"] = Convert.ToInt32(Session["tot"]) + sum;
                        Cart.AddtoCart(tmp);
                        Session["Cart"] = Cart;
                        Response.Redirect("My_Cart.aspx");
                    }
                }
            }
        }
        else if (Request["Pid"] == null)
        {
            var Pid = (int)Session["ProdID"];
            string whattodo = (string)(Request["op"]);
            int sum = 0;

            if (whattodo == "remove")
            {
                var car = Session["Cart"] as cart;
                car.RemoveFromCart(Pid);

                var ArrProd = Application["ArrP"] as List<products>;
                for (var i = 0; i < ArrProd.Count; i++)
                    if (ArrProd[i].pid == Pid)
                    {
                        sum += ArrProd[i].price;
                        Session["tot"] = Convert.ToInt32(Session["tot"]) - sum;
                    }
                Session["remove"] = 11;
                Response.Redirect("My_Cart.aspx");
            }
            else if (whattodo == "empty")
            {
                var car = Session["Cart"] as cart;
                car.EmptyCart();
                Response.Redirect("Product_List.aspx");
            }
            else
            {
                var ArrProd = Application["ArrP"] as List<products>;
                sum = 0;
                for (var i = 0; i < ArrProd.Count; i++)
                {
                    if (ArrProd[i].pid == Pid)
                    {
                        var Cart = Session["Cart"] as cart;
                        if (Cart == null)
                        {
                            Cart = new cart();
                        }
                        item tmp = new item(Pid, ArrProd[i].Pname, 1, ArrProd[i].Price, ArrProd[i].Picname, ArrProd[i].shortdesc, ArrProd[i].longdesc);
                        sum += ArrProd[i].price;
                        Session["tot"] = Convert.ToInt32(Session["tot"]) + sum;
                        Cart.AddtoCart(tmp);
                        Session["Cart"] = Cart;
                        Response.Redirect("My_Cart.aspx");
                    }
                }
            }
        }

    }
}
