<%@ Application Language="C#" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>

<script RunAt="server">

    void Application_Start(object sender, EventArgs e)
    {
        string ConnStr = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\\database.accdb";
        OleDbConnection Conn = new OleDbConnection(ConnStr);
        Conn.Open();
        OleDbCommand Cmd = new OleDbCommand();
        string Sql = "Select * From Products";
        Cmd.Connection = Conn;
        Cmd.CommandText = Sql;
        OleDbDataReader rd = Cmd.ExecuteReader();
        List<products> ArrProd = new List<products>();

        while (rd.Read())
        {
            ArrProd.Add(new products((int)rd["Prodid"], (string)rd["ProdName"], (int)rd["Price"], (string)rd["PicName"], (string)rd["ProdShortDesc"], (string)rd["ProdLongDesc"], (string)rd["Prodview"]));
        }
        Application["ArrP"] = ArrProd;
        Conn.Close();
    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }

</script>
