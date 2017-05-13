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

public partial class detail: System.Web.UI.Page
{
protected void Page_Load(object sender, EventArgs e)

{

if (!IsPostBack)
{
getnews();
string connectionString = ConfigurationManager.ConnectionStrings["lijunConnectionString"].ConnectionString;
SqlConnection cnn = new SqlConnection(connectionString);
string newid = Request.QueryString["id"];
string st = "select * from Article where artid='" + @newid+ "'";
cnn.Open();
SqlCommand cmd = new SqlCommand(st, cnn);
SqlDataReader rdr = cmd.ExecuteReader();
if (!rdr.Read())//如果id未输入或者错误
{
tr2.Visible = false;
tr1.Visible = false;
share.Visible = false;
Label1.Visible = true;
btngood.Visible = false;
cnn.Close();
Label5.Visible = false;
banner.Visible = false;
}
else
{
ckadmin(newid);
bind2();
bind1();
authcom();
showgood();
cnn.Close();
}
showfoot();
deletethis();

}
}
//赞的实现方法
protected void btngood_Click(object sender, ImageClickEventArgs e)
{
    string connectionString = ConfigurationManager.ConnectionStrings["lijunConnectionString"].ConnectionString;
    SqlConnection cnn = new SqlConnection(connectionString);
    string newid = Request.QueryString["id"];
    string st = "update Article set good=good+1 where artid='" + @newid + "'";
    cnn.Open();
    SqlCommand cmd = new SqlCommand(st, cnn);
    cmd.ExecuteNonQuery();
    cnn.Close();
    Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script type='text/javascript'>alert('谢谢支持！');</script>");
    showgood();
}
//提交评论
protected void btnPost_Click(object sender, EventArgs e)
{
	//初始化变量
string comment = txtcomment.Text.ToString().Trim();
string cmail = txtmail.Text.ToString().Trim();
string coname = txtname.Text.ToString().Trim();

coname = Encryption.Encode(coname);
cmail = Encryption.Encode(cmail);
comment = Encryption.Encode(comment);
string connectionString = ConfigurationManager.ConnectionStrings["lijunConnectionString"].ConnectionString;
SqlConnection cnn = new SqlConnection(connectionString);
string newid = Request.QueryString["id"];
DateTime dt = TimeZoneInfo.ConvertTimeBySystemTimeZoneId(DateTime.Now, "China Standard Time");//转东八区  
    
//查询用户是否存在     
string st2 = "select * from Guest where gname='" + @coname + "' and gmail='" + @cmail + "' and gflag=0";
cnn.Open();
SqlCommand cmd2 = new SqlCommand(st2, cnn);
SqlDataReader rdrr = cmd2.ExecuteReader();
//找到该用户
if (rdrr.Read())
{
//邮件验证通过

    if (rdrr["mailv"].ToString() == "True")
    {     

        int fids = getfloors();
        int gid = Convert.ToInt32(rdrr["guid"]);
        cnn.Close();
        string st = "";
		//评论
        if (lbif.Visible == true)
        {
            st = "insert into Comment (aid,gid,comment,cposttime,fid) values('" + @newid + "','" + @gid + "','" + @comment + "','" + @dt + "','" + @fids + "')";
        }
		//回复
        else
        {
            int repid = Convert.ToInt32(Session["repis"]);
            st = "insert into Comment (aid,gid,repid,comment,cposttime,fid) values('" + @newid + "','" + @gid + "','" + @repid + "','" + @comment + "','" + @dt + "','" + @fids + "')";
        }
        SqlCommand cmd = new SqlCommand(st, cnn);
        cnn.Open();
        cmd.ExecuteNonQuery();
        Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script type='text/javascript'>alert('回复成功！');window.location.href=window.location.href; </script>");
        bind1();
        cnn.Close();
    }
    else
    {

        //重发验证邮件
        mailv(cmail, coname);
        Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script type='text/javascript'>alert('请登录你的邮箱验证邮件！');window.location.href=window.location.href; </script>");
    }

}
else
{
	ckuser(coname,cmail);
    //是否存在相关用户名和密码

}
cnn.Close();


}




protected void btnReset_Click(object sender, EventArgs e)
{
txtname.Text = "";
txtmail.Text="";
txtcomment.Text="";
}

protected void btnBack_click(object sender, ImageClickEventArgs e)
{
Response.Redirect("bbs.aspx");
}
protected void showfoot()
{
string connectionString = ConfigurationManager.ConnectionStrings["lijunConnectionString"].ConnectionString;
SqlConnection cnn = new SqlConnection(connectionString);
string st = "select * from Class where classid=7";
cnn.Open();
SqlCommand cmd = new SqlCommand(st, cnn);
SqlDataReader rdr = cmd.ExecuteReader();
if (rdr.Read())
{
this.Label3.Text = Server.HtmlDecode(rdr["content"].ToString());
}
cnn.Close();
}
protected void showgood()//获取赞的数量
{
string connectionString = ConfigurationManager.ConnectionStrings["lijunConnectionString"].ConnectionString;
SqlConnection cnn = new SqlConnection(connectionString);
string newid = Request.QueryString["id"];
string st = "select * from Article where artid='" + @newid + "'";
cnn.Open();
SqlCommand cmd = new SqlCommand(st, cnn);
SqlDataReader rdr = cmd.ExecuteReader();
if (rdr.Read())
{
this.Label4.Text = rdr["good"].ToString();
}
cnn.Close();
}
protected void bind1()
{
string connectionString = ConfigurationManager.ConnectionStrings["lijunConnectionString"].ConnectionString;
SqlConnection cnn = new SqlConnection(connectionString);
string newid = Request.QueryString["id"];
//对两个查询表进行查询
string st = "Select  a.fid,rfid,ismgr,a.gname,rcomment,rname,comment,cposttime,a.comid,cflag,comon,a.mailv from (Select * from Comment,Guest,Article where Comment.gid=Guest.guid and aid=artid and aid='" + @newid + "') as a left join (Select comid,gname as rname,repid,fid as rfid,comment as rcomment from Comment,Guest where Comment.gid=Guest.guid and comid in (Select repid from Comment)) as b on a.repid=b.comid and aid='" + @newid + "' where a.mailv=1 or a.ismgr=1 order by a.comid";
cnn.Open();
SqlDataAdapter da = new SqlDataAdapter(st, cnn);
DataSet ds = new DataSet();
da.Fill(ds);
DataColumn col=ds.Tables[0].Columns.Add("state",typeof(bool));//自定义列state，判断reply是否为空，绑定Datalist中的“回复：”
for (int k = 0; k < ds.Tables[0].Rows.Count; k++)//遍历DataTable，将自定义的state列赋值
{
for (int j = 0; j < ds.Tables[0].Columns.Count; j++)
{
if (ds.Tables[0].Rows[k]["rfid"].ToString().Trim() == "")
{
ds.Tables[0].Rows[k]["state"] = false;
ds.Tables[0].Rows[k]["rname"] = "W09e9r226HPhomHFSD8Ktg==";
ds.Tables[0].Rows[k]["rcomment"] = "W09e9r226HPhomHFSD8Ktg==";
}
else
{
ds.Tables[0].Rows[k]["state"] =true;
}
}
}

ds.AcceptChanges();//保存更改
dlcom.DataSource = ds;
dlcom.DataBind();
if (dlcom.Items.Count == 0)
{
Label5.Visible = false;
comdiv.Visible = false;
}
ds.Clear();
cnn.Close();      
}
protected void bind2()
{
string connectionString = ConfigurationManager.ConnectionStrings["lijunConnectionString"].ConnectionString;
SqlConnection cnn = new SqlConnection(connectionString);
string newid = Request.QueryString["id"];
string st = "select * from Article where artid='" + @newid + "'";
SqlDataAdapter da = new SqlDataAdapter(st, cnn);
DataSet ds = new DataSet();
da.Fill(ds);        
fvtxt.DataSource = ds;
fvtxt.DataBind();
if (ds.Tables[0].Rows[0]["comon"].ToString() == "True")
{
ImageButton ibtn = fvtxt.FindControl("btnRly") as ImageButton;
dlcom.Enabled = false;
}
ds.Clear();
cnn.Close();
}

//缩短
public string SubStr(object caption, int nLeng)
{
string sString = caption.ToString().Trim();
if (sString.Length <= nLeng)
{
return sString;
}
else
{
string sNewStr = sString.Substring(0, nLeng);
sNewStr = sNewStr + "..."; return sNewStr;
}
}
protected void getnews()//用于显示上一篇、下一篇文章
{
int newsid = Convert.ToInt32(Request.QueryString["id"]);
string connectionString = ConfigurationManager.ConnectionStrings["lijunConnectionString"].ConnectionString;
SqlConnection cnn = new SqlConnection(connectionString);
string st = "select top 1 * from Article where artid<" + @newsid + " order by artid desc";
string st2 = "select top 1 *  from  Article  where artid>" + @newsid + " order by artid"; 
cnn.Open();
SqlCommand cmd = new SqlCommand(st, cnn);
SqlCommand cmd2 = new SqlCommand(st2, cnn);
SqlDataReader rdr = cmd.ExecuteReader();
if (rdr.Read())
{
hlpre.Text = rdr["artitle"].ToString();
hlpre.Enabled = true;
hlpre.NavigateUrl = "detail.aspx?id=" + rdr["artid"].ToString();
cnn.Close();
}
else
{
hlpre.Font.Underline = false;
cnn.Close();
}
cnn.Open();
SqlDataReader rdr2 = cmd2.ExecuteReader();
if (rdr2.Read())
{
hlnext.Text = rdr2["artitle"].ToString();
hlnext.Enabled = true;
hlnext.NavigateUrl = "detail.aspx?id=" + rdr2["artid"].ToString();
cnn.Close();
}
else
{
hlnext.Font.Underline = false;
cnn.Close();
}

}
//检查用户
protected void ckuser(string name, string mail)
{
string connectionString = ConfigurationManager.ConnectionStrings["lijunConnectionString"].ConnectionString;
SqlConnection cnn = new SqlConnection(connectionString);
string st = "select * from Guest where gname='" + @name + "' or gmail='" + @mail + "'";
cnn.Open();
SqlCommand cmd = new SqlCommand(st, cnn);
SqlDataReader rdr = cmd.ExecuteReader();
if (rdr.Read())
{
   
Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script type='text/javascript'>alert('邮箱或昵称输入错误！');window.location.href=window.location.href; </script>");
}
else
{
cnn.Close();
cnn.Open();
string st2 = "insert into Guest(gname,gmail,gflag,mailv,ismgr) values('" + @name + "','" + @mail + "','0','0','0')";
SqlCommand cmd2 = new SqlCommand(st2, cnn);
cmd2.ExecuteNonQuery();
cnn.Close();
//插入评论
//发送验证邮件
mailv(mail,name);
Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script type='text/javascript'>alert('请登录你的邮箱验证邮件！');window.location.href=window.location.href; </script>");
}

}
//楼层回复
protected void btnR_Click(object sender, EventArgs e)
{
reply.Visible = true;
lbif.Visible = false;
lbr1.Visible = true;
lbr2.Visible = true;
lbre.Visible = true;
Button btn = sender as Button;
    string commm=btn.CommandArgument.ToString();
Session["repis"] = commm;
int newsid = Convert.ToInt32(Request.QueryString["id"]);
string st = "select * from Comment as a,Guest as b where comid='"+@commm+"' and a.gid=b.guid ";
SqlDataReader reader = DBHelp.cn(st).ExecuteReader();
if (reader.Read())
{
    
    lbre.Text =Encryption.Decode(reader["gname"]).ToString();
}
}   


//获取楼层
protected int getfloors()
{
int newsid = Convert.ToInt32(Request.QueryString["id"]);
string connectionString = ConfigurationManager.ConnectionStrings["lijunConnectionString"].ConnectionString;
SqlConnection cnn = new SqlConnection(connectionString);
string st = "SELECT COUNT(comid) AS floors FROM Comment WHERE aid='"+@newsid+"'";
cnn.Open();
SqlCommand cmd = new SqlCommand(st, cnn);
SqlDataReader rdr = cmd.ExecuteReader();
if (rdr.Read())
{
int fids = Convert.ToInt32(rdr["floors"]);
cnn.Close();
return fids+1;
}
else
{
cnn.Close();
return 0;
}
}
//检查是否允许评论
protected void authcom()
{
string connectionString = ConfigurationManager.ConnectionStrings["lijunConnectionString"].ConnectionString;
SqlConnection cnn = new SqlConnection(connectionString);
string st = "SELECT * from Auth";
cnn.Open();
SqlCommand cmd = new SqlCommand(st, cnn);
SqlDataReader rdr = cmd.ExecuteReader();
if (rdr.Read())
{
    if (rdr["comment"].ToString() == "True")//评论已经关闭
    {
        dlcom.Enabled = false;
        reply.Visible = false;
    }
    else
    {
if (ckcomm() == true)
    {
        dlcom.Enabled = false;
      
        reply.Visible = false;
    }
    }
cnn.Close();
}
else
{
    
       dlcom.Enabled = true;
        reply.Visible = true;
   
cnn.Close();
}
}
public string OutputByLine(object caption)//通过设定的行数分页 
{
string strContent = caption.ToString().Trim();
int pageSize = int.Parse(ConfigurationManager.AppSettings["pageSize"]);//每页显示行数从CONFIG文件中取出 
string lineBreak = ConfigurationManager.AppSettings["lineBreak"];//换行符从CONFIG文件中取出 
strContent = strContent.Replace("\r\n", "");
string[] strLined = strContent.Split(new string[] { lineBreak }, StringSplitOptions.RemoveEmptyEntries);//以DIV为换行符 
int pageCount = strLined.Length / pageSize;
int pageCountPlus = strLined.Length % pageSize == 0 ? 0 : 1;//非满页 
pageCount = pageCount + pageCountPlus;//总页数 
int currentPage = 1;//当前页码 
string displayText = null;
string epage = Request.QueryString["page"];
if (epage != null) //获取翻页页码 
{
if (epage.Trim() == "")        //错误处理
{
currentPage = 1;
}
else
{
currentPage = Convert.ToInt32(epage);
if (currentPage < 1 || currentPage > pageCount)
{
currentPage = 1;
}
}
}
else
{
currentPage = 1;
}
string pageInfo = "";//页数信息 
for (int i = 1; i < pageCount + 1; i++)
{
if (i == currentPage)
{
pageInfo += "<span>" + i + "</span>";
pageInfo = "<div class='pager'>" + pageInfo + "<div>";
}
else
{
string newsid = Request.QueryString["id"];
pageInfo += "<a href=detail.aspx?" +"id="+newsid+"&page=" + i + ">" + i + "</a>";
pageInfo = "<div class='pager'>" + pageInfo + "<div>";
}
}
if (pageCount == 1)
{
labPageNumber.Visible = false;
}
labPageNumber.Text = pageInfo;
for (int i = (currentPage - 1) * pageSize; i < currentPage * pageSize && i < strLined.Length; i++)
{
displayText += "<div>" + strLined[i] + "</div>";
}
return displayText;
}
    //验证管理员
protected void ckadmin(string artid)
{
    if (Session["issuper"] == null || Session["ispwd"] == null)
    {
        HyperLink1.Visible = false;
        HyperLink2.Visible = false;
    }
    else if (WebHelp.Auth(Session["issuper"].ToString(), Session["ispwd"].ToString()) == false)
    {
        HyperLink1.Visible = false;
        HyperLink2.Visible = false;
    }
    else
    {
        //HyperLink1.NavigateUrl = "javascript:void if(!confirm('确认删除本文吗？')) return false;window.location.href='editpost.aspx?id=" + artid+"';";
        HyperLink1.NavigateUrl = "editpost.aspx?id=" + artid;
        HyperLink2.NavigateUrl = "detail.aspx?id=" + artid+"&ac=delete";
    }
}
protected void deletethis()
{
    string newid = Request.QueryString["id"];
    string action = Request.QueryString["ac"];
    if(action=="delete")
    {
    string connectionString = ConfigurationManager.ConnectionStrings["lijunConnectionString"].ConnectionString;
    SqlConnection cnn = new SqlConnection(connectionString);
    string st = "Delete Article where artid='" + @newid + "'";
    SqlCommand cmd = new SqlCommand(st, cnn);
    cnn.Open();
    cmd.ExecuteNonQuery();
    cnn.Close();
    Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script type='text/javascript'>alert('删除成功！');  window.location.href='bbs.aspx'; </script>");
    }
}
    //验证关闭评论
protected bool ckcomm()
{
    string newid = Request.QueryString["id"];
    string st = "select * from Article where artid='" + @newid + "'";
    SqlDataReader red = DBHelp.cn(st).ExecuteReader();
    if (red.Read())
    {
        if (red["comon"].ToString() == "True")
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    else
    {
        return false;
    }
}
    //发送验证邮件
    protected void mailv(string mailto,string usr)
{
    MailAddress MessageFrom = new MailAddress("admin@lijun0772.com"); //发件人邮箱地址
    string mailtoe = Encryption.Decode(mailto);
    string MessageTo = mailtoe;//收件人邮箱地址 
    string MessageSubject = "[丽军数码]验证邮箱地址"; //邮件主题 
    string user = Encryption.Auth(usr);//MD5
    string mail = Encryption.Auth(mailto);//MD5
    string url = "http://lijun0772.com/mailv.aspx?key="+Encryption.Auth("黑我网站速度死！"+user)+mail;
    string MessageBody = "<p>"+Encryption.Decode(usr)+"，你好：<br/>请点击以下链接完成验证：<br/><a href=\""+url+"\" target=\"_blank\">验证链接</a><br />如果你没有在本站评论或留言，请不要理会。</p><p align=\"right\">丽军数码</p>"; //邮件内容
    WebHelp.Send(MessageFrom, MessageTo, MessageSubject, MessageBody);
    }    
    //发送通知邮件
    protected void mailno()
    {
        MailAddress MessageFrom = new MailAddress("admin@lijun0772.com"); //发件人邮箱地址 
        string MessageTo = "237549738@qq.com";//收件人邮箱地址 
        string MessageSubject = "[丽军数码]有人发表了新评论！"; //邮件主题 
        string MessageBody = "<p>http://lijun0772.com/adminlogin.aspx</p>"; //邮件内容
        WebHelp.Send(MessageFrom, MessageTo, MessageSubject, MessageBody);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        //初始化变量

        string cmail = txtmail.Text.ToString().Trim();
        string coname = txtname.Text.ToString().Trim();

        if (coname == ""||cmail=="") {

            lbmail.Text = "昵称和邮箱都要填完哦。";
            lbmail.ForeColor = System.Drawing.Color.Red;
        }

        else
        {

            coname = Encryption.Encode(coname);
            cmail = Encryption.Encode(cmail);

            string connectionString = ConfigurationManager.ConnectionStrings["lijunConnectionString"].ConnectionString;
            SqlConnection cnn = new SqlConnection(connectionString);
            string newid = Request.QueryString["id"];
            DateTime dt = TimeZoneInfo.ConvertTimeBySystemTimeZoneId(DateTime.Now, "China Standard Time");//转东八区  

            //查询用户是否存在     
            string st2 = "select * from Guest where gname='" + @coname + "' and gmail='" + @cmail + "' and gflag=0";
            cnn.Open();
            SqlCommand cmd2 = new SqlCommand(st2, cnn);
            SqlDataReader rdrr = cmd2.ExecuteReader();
            //找到该用户
            if (rdrr.Read())
            {
                //邮件验证通过

                if (rdrr["mailv"].ToString() == "True")
                {
                    lbmail.Text = "该邮件已验证。";
                    lbmail.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    //重发验证邮件
                    mailv(cmail, coname);
                    lbmail.Text = "验证邮件已发送。";
                    lbmail.ForeColor = System.Drawing.Color.FromArgb(179, 95, 150);
                }

            }
            else
            {
                ckuser(coname, cmail);
                //是否存在相关用户名和密码

            }
            cnn.Close();



        }
    }
}
