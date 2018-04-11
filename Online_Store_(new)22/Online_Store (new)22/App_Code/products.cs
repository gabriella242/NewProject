using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for products
/// </summary>
public class products
{
    public int Pid;
    public int pid
    {
        get
        {
            return Pid;
        }
        set
        {
            Pid = value;
        }
    }
    public string pname;
    public string Pname
        {
                get
        {
            return pname;
        }
            set
        {
            pname = value;
        }
}
    public int Price;
    public int price
    {
        get
        {
            return Price;
        }
        set
        {
            Price = value;
        }
    }
    public string Picname;
    public string picname
    {
        get
        {
            return Picname;
        }
        set
        {
            Picname = value;
        }
    }
    public string Shortdesc;
    public string shortdesc
    {
        get
        {
            return Shortdesc;
        }
        set
        {
            Shortdesc = value;
        }
    }

    public string Longdesc;
    public string longdesc
    {
        get
        {
            return Longdesc;
        }
        set
        {
            Longdesc = value; 
        }
    }
    public string prodview;
    public string Prodview
    {
        get
        {
            return prodview;
        }
        set
        {
            prodview = value;
        }
    }
    public products(int Pid, string Pname, int Price, string picname, string shortdesc, string longdesc, string Prodview)
    {
        this.Pid = Pid;
        this.Pname = Pname;
        this.Price = Price;
        this.Picname = picname;
        this.Shortdesc = shortdesc;
        this.Longdesc = longdesc;
        prodview = Prodview;
    }
}