using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for item
/// </summary>
public class item
{
    private int Pid;
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
    private string Pname;
    public string pname
    {
        get { return Pname; }
        set { Pname = value; }
    }
    private int Amount;
    public int amount
    {
        get { return Amount; }
        set { Amount = value; }
    }
    public int Price;
    public int price
    {
        get { return Price; }
        set { Price = value; }
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
    public item(int pid, string pname, int amount, int price, string picname,string shortdesc, string longdesc)
    {
        Pid = pid;
        Pname = pname;
        Price = price;
        this.amount = amount;
        this.picname = picname;
        this.shortdesc = shortdesc;
        this.longdesc = longdesc;
    }

}