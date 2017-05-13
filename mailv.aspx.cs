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




public partial class mailv : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        mailvs();
        //延时跳转
        Response.AddHeader("refresh","10;url=Default.aspx");
    }
    protected void mailvs()
    {
        
        string mail = Server.UrlEncode(Request.QueryString["key"]);
        if(mail==""||mail==null)
        {
            Label1.Text = "验证失败……";
            Image1.ImageUrl = "~/imgs/x.gif";        
        }
        else
        {
string connectionString = ConfigurationManager.ConnectionStrings["lijunConnectionString"].ConnectionString;
SqlConnection cnn = new SqlConnection(connectionString);
//查询
string st = "select * from Guest";
cnn.Open();
SqlDataAdapter da = new SqlDataAdapter(st, cnn);
DataSet ds = new DataSet();
da.Fill(ds);
bool flag = false;
for (int k = 0; k < ds.Tables[0].Rows.Count; k++)//遍历DataTable
{
    string mailv=ds.Tables[0].Rows[k]["gname"].ToString();
    string namev=ds.Tables[0].Rows[k]["gmail"].ToString();
    if (Encryption.Auth("黑我网站速度死！" + Encryption.Auth(mailv)) + Encryption.Auth(namev) == mail)
{
    //这是为了避免重复发送验证邮件
    if (ds.Tables[0].Rows[k]["mailv"].ToString() == "False")
    {
        //通过验证
        string p = ds.Tables[0].Rows[k]["gname"].ToString();
        string st2 = "update Guest set mailv=1 where gname='" + p + "'";
        DBHelp.cn(st2).ExecuteNonQuery();
         mailno();//通过验证才发送通知
    }
    Label1.Text = "验证成功！";
    Image1.ImageUrl = "~/imgs/v.gif";
 flag = true;

 break;

}
else
{
    continue;
}
} 
if(flag==false)
{
//验证失败
    Label1.Text = "验证失败……";
    Image1.ImageUrl = "~/imgs/x.gif";
}

ds.Clear();
cnn.Close();
}
      
}
         
    //发送通知邮件
    protected void mailno()
    {
        MailAddress MessageFrom = new MailAddress("admin@lijun0772.com"); //发件人邮箱地址 
        string MessageTo = "237549738@qq.com";//收件人邮箱地址 
        string MessageSubject = "[丽军数码]网站有新动态！"; //邮件主题 
        string MessageBody = "<a href=\"http://lijun0772.com/\" target=\"_blank\">点此查看</a></p>"; //邮件内容
        WebHelp.Send(MessageFrom, MessageTo, MessageSubject, MessageBody);
    }    


}