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

public partial class messages : System.Web.UI.Page
{
    protected SqlDataAdapter da;
    protected DataSet ds;
    protected SqlCommand comm;
    private int rowscount = 0; 
    protected int RowsCount
    {

        get { return rowscount; }
        set { this.rowscount = value; }
    }    

    protected void Page_Load(object sender, EventArgs e)
    {
         if (!IsPostBack)
        {
            footerload();
            bind();
            authmess();
        }
      }
    protected void btnCommit_click(object sender, ImageClickEventArgs e)
    {
            txtcname.Text = txtcname.Text.Replace(" ", "");//去空格
            txtcmail.Text = txtcmail.Text.Replace(" ", "");
            string pname =Encryption.Encode( txtcname.Text.Trim());
            string pmail =Encryption.Encode( txtcmail.Text.Trim());
            string pcontent = Encryption.Encode(txtccontent.Text);
            ckuser(pname, pmail);
            string connectionString = ConfigurationManager.ConnectionStrings["lijunConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            DateTime dt = TimeZoneInfo.ConvertTimeBySystemTimeZoneId(DateTime.Now, "China Standard Time");//转东八区
            string st2 = "select * from Guest where gname='" + @pname + "' and gmail='" + @pmail + "'";
            con.Open();
            SqlCommand cmd2 = new SqlCommand(st2, con);
            SqlDataReader rdrr = cmd2.ExecuteReader();
                    if (rdrr.Read())
                    {
                        if (rdrr["gflag"].ToString() == "True")
                        {
                            Response.Write("<script type='text/javascript'>alert('你已经被管理员禁言！');window.location.href='messages.aspx?Page=1'; </script>");
                            con.Close();
                        }
                        else
                        {
                            int gid = Convert.ToInt32(rdrr["guid"]);
                            con.Close();
                            string st = "insert into Mess (pcontent,pposttime,ispub,gid) values('" + @pcontent + "','" + @dt + "','0','" + @gid + "')";
                            SqlCommand cmd = new SqlCommand(st, con);
                            con.Open();
                            cmd.ExecuteNonQuery();
                            con.Close();
                            txtcname.Text = "";
                            txtcmail.Text = "";
                            txtccontent.Text = " ";
                            Response.Write("<script type='text/javascript'>alert('谢谢您的支持！');window.location.href='messages.aspx?Page=1'; </script>");
                            dvmess.Visible = false;
                            close.Visible = false;
                            bind();
                        }
                    }                    
                    else
                    {
                        con.Close();
                        Response.Write("<script type='text/javascript'>alert('昵称和邮箱不匹配，请重新输入！');window.location.href='messages.aspx?Page=1'; </script>");
                    }
                }
            
       

               
	
	protected void btnReset_click(object sender,ImageClickEventArgs e)
	{
		txtccontent.Text=" ";
	}
    protected void footerload()
    {
        string connectionString = ConfigurationManager.ConnectionStrings["lijunConnectionString"].ConnectionString;
        SqlConnection cnn = new SqlConnection(connectionString);
        string st = "select * from Class where classid=7";
        cnn.Open();
        SqlCommand cmd = new SqlCommand(st, cnn);
        SqlDataReader rdr = cmd.ExecuteReader();
        if (rdr.Read())
        {
            this.Label4.Text = Server.HtmlDecode(rdr["content"].ToString());
            cnn.Close();
        }
    }
  
    protected void close_Click(object sender, ImageClickEventArgs e)
    {
        dvmess.Visible = false;    
    }
    protected void btnnew_Click(object sender, EventArgs e)
    {
        dvmess.Visible = true;      
 
    }
    private void bind()
    {

        string connectionString = ConfigurationManager.ConnectionStrings["lijunConnectionString"].ConnectionString;
        SqlConnection cnn = new SqlConnection(connectionString);
        string st = "select * from Mess,Guest where Guest.guid=Mess.gid and ispub=1 order by pid desc";
        cnn.Open();
        SqlDataAdapter da = new SqlDataAdapter(st, cnn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        this.dlmess.DataSource = ds.Tables[0].DefaultView;
        DataColumn col = ds.Tables[0].Columns.Add("state", typeof(bool));//自定义列state，判断reply是否为空，绑定Datalist中的“回复：”
        RowsCount = ds.Tables[0].Rows.Count;//为RowsCount赋值
        for (int k = 0; k < ds.Tables[0].Rows.Count; k++)//遍历DataTable，将自定义的state列赋值
        {
            for (int j = 0; j < ds.Tables[0].Columns.Count; j++)
            {
                if (ds.Tables[0].Rows[k]["reply"].ToString().Trim() == "")
                {
                    ds.Tables[0].Rows[k]["state"] = false;//如果                    
                }
                else
                {
                    ds.Tables[0].Rows[k]["state"] = true;
                }
            }
        }
        DataColumn col2 = ds.Tables[0].Columns.Add("rowsid", typeof(int));//序号
        for (int i = 0; i < RowsCount; i++)
        {
            ds.Tables[0].Rows[i]["rowsid"] =RowsCount- i ;
        }
        ds.AcceptChanges();//保存更改
        this.labPageNumber.Text = PageNums.GetPageNum(ds, dlmess, 5); //传入DataSet,DataList名称和分页大小
        dlmess.DataBind();
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
  //检查用户
  protected void ckuser(string name, string mail)
  {
      if (name.Trim() != "" || mail.Trim() != "")
      {
          string connectionString = ConfigurationManager.ConnectionStrings["lijunConnectionString"].ConnectionString;
          SqlConnection cnn = new SqlConnection(connectionString);
          string st = "select * from Guest where gname='" + @name + "' or gmail='" + @mail + "'";
          cnn.Open();
          SqlCommand cmd = new SqlCommand(st, cnn);
          SqlDataReader rdr = cmd.ExecuteReader();
          if (rdr.Read())
          {
              if (rdr["gflag"].ToString() == "True")
              {
                  cnn.Close();
                  Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script type='text/javascript'>alert('你已被管理员禁言！');window.location.href=window.location.href; </script>");
              }
              else
              {
                  if (rdr["mailv"].ToString() == "False")
                  {
                      mailv(mail, name);
                  }
                  else
                  {
                      //已经通过验证，发送通知邮件
                      mailno();
                      cnn.Close();
                  }
              }
          }
          else
          {
              cnn.Close();
              cnn.Open();
              string st2 = "insert into Guest(gname,gmail) values('" + @name + "','" + @mail + "')";
              SqlCommand cmd2 = new SqlCommand(st2, cnn);
              cmd2.ExecuteNonQuery();
              cnn.Close();
              //发送验证邮件
              mailv(mail, name);
          }
      }

  }
    //禁止留言
  protected void authmess()
  {
      string connectionString = ConfigurationManager.ConnectionStrings["lijunConnectionString"].ConnectionString;
      SqlConnection cnn = new SqlConnection(connectionString);
      string st = "select * from Auth";
      cnn.Open();
      SqlCommand cmd = new SqlCommand(st, cnn);
      SqlDataReader rdr = cmd.ExecuteReader();
      if (rdr.Read())
      {
          if (rdr["mess"] .ToString()== "True")
          {
              cnn.Close();
              btnnew.Enabled = false;
              btnnew.Text="管理员关闭了留言功能！";
          }
          else
          {
              cnn.Close();
          }
      }
      else
      {
          cnn.Close();         
      }
  }
  //发送验证邮件
  protected void mailv(string mailto, string usr)
  {
      MailAddress MessageFrom = new MailAddress("admin@lijun0772.com"); //发件人邮箱地址
      string mailtoe = Encryption.Decode(mailto);
      string MessageTo = mailtoe;//收件人邮箱地址 
      string MessageSubject = "[丽军数码]验证邮箱地址"; //邮件主题 
      string user = Encryption.Auth(usr);//MD5
      string mail = Encryption.Auth(mailto);//MD5
      string url = "http://lijun0772.com/mailv.aspx?key=" + Encryption.Auth("黑我网站速度死！" + user) + mail;
      string MessageBody = "<p>" + Encryption.Decode(usr) + "，你好：<br/>请点击以下链接完成验证：<br/><a href=\"" + url + "\" target=\"_blank\">验证链接</a><br />如果你没有在本站评论或留言，请不要理会。</p><p align=\"right\">丽军数码</p>"; //邮件内容
      Send(MessageFrom, MessageTo, MessageSubject, MessageBody);
  }
  //发送通知邮件
  protected void mailno()
  {
      MailAddress MessageFrom = new MailAddress("admin@lijun0772.com"); //发件人邮箱地址 
      string MessageTo = "237549738@qq.com";//收件人邮箱地址 
      string MessageSubject = "[丽军数码]有人发表了新留言！"; //邮件主题 
      string MessageBody = "<p>http://lijun0772.com/</p>"; //邮件内容
      WebHelp.Send(MessageFrom, MessageTo, MessageSubject, MessageBody);
  }
  //发送邮件函数
  public bool Send(MailAddress MessageFrom, string MessageTo, string MessageSubject, string MessageBody)
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
 


    
         

