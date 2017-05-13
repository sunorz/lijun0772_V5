using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Net.Mail;

/// <summary>
///WebHelp 的摘要说明
/// </summary>
public class WebHelp
{
    public static bool Auth(string user, string password)
    {
            string connectionString = ConfigurationManager.ConnectionStrings["lijunConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            string st = "select * from Admin where adname='" + @user + "' and adpwd='" + @password + "'";
            con.Open();
            SqlCommand cmd = new SqlCommand(st, con);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                return true;

            }
            else
            {
                return false;
            }
        
    }
       //发送邮件函数
    public  static bool Send(MailAddress MessageFrom, string MessageTo, string MessageSubject, string MessageBody)
    {
        MailMessage message = new MailMessage();

        // if (FileUpload1.PostedFile.FileName != "")
        // {
        // Attachment att = new Attachment("d://test.txt");//发送附件的内容
        //    message.Attachments.Add(att);
        // }

        message.From = MessageFrom;
        message.To.Add(MessageTo); //收件人邮箱地址可以是多个以实现群发 
        message.Subject = MessageSubject;
        message.Body = MessageBody;
        //message.Attachments.Add(objMailAttachment);
        message.IsBodyHtml = true; //是否为html格式 
        //message.Priority = MailPriority.High; //发送邮件的优先等级 

        SmtpClient sc = new SmtpClient();
        sc.Host = "smtp.hichina.com"; //指定发送邮件的服务器地址或IP 
        sc.Port = 25; //指定发送邮件端口 
        sc.Credentials = new System.Net.NetworkCredential("admin@lijun0772.com", "mADDtN34"); //指定登录服务器的用户名和密码(发件人的邮箱登陆密码)

        try
        {
            sc.Send(message); //发送邮件 
        }
        catch
        {
            return false;
        }
        return true;

    }
}
