using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for cart
/// </summary>
public class cart
{
    public item[] ArrItem;
    public int Size;
    public cart()
    {
        ArrItem = new item[1000];
        Size = 0;
    }
    public void AddtoCart(item tmp)
    {
        ArrItem[Size] = tmp;
        Size++;
    }
    public void EmptyCart()
    {
        Size = 0;
    }
    public void RemoveFromCart(int pid)
    {
        for (int i = 0; i < Size; i++)
        {
            if (ArrItem[i].pid == pid)
            {
                for (int j = i; j < Size - 1; j++)
                {
                    ArrItem[j] = ArrItem[j + 1];
                }
                Size--;
            }
        }
    }
}