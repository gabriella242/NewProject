using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Net.Mail;
using System.Text;

/// <summary>
/// Summary description for GlobalFunc
/// </summary>
public class GlobalFunc
{
    public static void SendEmail(string FromEmail, string ToEmail, string Subject, string Body)
    {
        SmtpClient smtpClient = new SmtpClient("smtp.live.com", 587);
        smtpClient.Credentials = new NetworkCredential("***@hotmail.com", "***");
        smtpClient.EnableSsl = true;

        MailMessage Mail = new MailMessage();
        Mail.From = new MailAddress(FromEmail);
        Mail.To.Add(new MailAddress(ToEmail));
        Mail.Subject = Subject;
        Mail.Body = Body;
        Mail.IsBodyHtml = true;
        smtpClient.Send(Mail);
    }
    public static string FetchUrl(string Url)
    {
        string Retval;
        WebClient WC = new WebClient();
        WC.Encoding = Encoding.UTF8;
        Retval = WC.DownloadString(Url);
        return Retval;

    }
}