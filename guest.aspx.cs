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
using System.IO;
using System.Drawing;
using System.Net.Mail;
public partial class guest : System.Web.UI.Page
{
     protected void Page_Load(object sender, EventArgs e)
    {
        Button4.Attributes.Add("onclick", " if(!confirm('确认删除该访客吗？\\n如果想禁止该访客再次发言，请直接禁言！')) return false;"); 
        if (Session["issuper"] == null || Session["ispwd"] == null)
        {
            Response.Write("<script type='text/javascript'>alert('登录超时！');window.location.href='Default.aspx';</script>");
        }
        else if (WebHelp.Auth(Session["issuper"].ToString(), Session["ispwd"].ToString()) == false)
        {
            Response.Write("<script type='text/javascript'>alert('登录超时！');window.location.href='Default.aspx';</script>");
        }

        else
        {
            if (!IsPostBack)
            {
                this.Label1.Text = "欢迎管理员：" + Encryption.Decode(Session["issuper"]);
                footerload();
                bind();
            }
        }
     }
 

    protected void btnBaphoto_click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("adminweb.aspx");
    }
    protected void btnBack_click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("adminweb.aspx");
    }
    protected void btnLogout_click(object sender, ImageClickEventArgs e)
    {
        Session["issuper"] = null;
        Session["suadmin"] = null;
        Response.Write("<script type='text/javascript'>window.location.href='Default.aspx';</script>");
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
            this.Label3.Text = Server.HtmlDecode(rdr["content"].ToString());
            cnn.Close();
        }
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
    //自定义更新
    protected void gvguest_RowUpd(object sender, GridViewUpdateEventArgs e)
    {
        TextBox tb=gvguest.Rows[e.RowIndex].FindControl("TextBox1") as TextBox;
        TextBox tb2=gvguest.Rows[e.RowIndex].FindControl("TextBox2") as TextBox;
        CheckBox cb = gvguest.Rows[e.RowIndex].FindControl("CheckBox1") as CheckBox;
        CheckBox cb2 = gvguest.Rows[e.RowIndex].FindControl("CheckBox2") as CheckBox;
         int locker;
         int isadmin;
        if (cb.Checked)
        {
            locker = 1;
        }
        else
        {
            locker = 0;
        }
        if (cb2.Checked)
        {
            isadmin = 1;
        }
        else
        {
            isadmin = 0;
        }
        string name=Encryption.Encode(tb.Text.Trim());
        string mail=Encryption.Encode(tb2.Text.Trim());
        int guid=Convert.ToInt32(gvguest.DataKeys[e.RowIndex].Value);
        if (ckguest(guid, name, mail))
        {
            string ppt = "";
            if (ckmail(guid,mail))
            {
                ppt = ",mailv=0";
                //验证邮箱
                mailv(mail, name);
            }
            else
            {
                ppt = "";
            }
            string connectionString = ConfigurationManager.ConnectionStrings["lijunConnectionString"].ConnectionString;
            SqlConnection conur = new SqlConnection(connectionString);
            string delur = "update Guest set gname='" + @name + "',gmail='" + @mail + "',gflag='" + @locker + "',ismgr='" + @isadmin + "'"+ppt+" where guid='" + @guid + "'";
            SqlCommand cmdu = new SqlCommand(delur, conur);
            conur.Open();
            cmdu.ExecuteNonQuery();
            conur.Close();
            
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script type='text/javascript'>alert('更新成功！');</script>");
            bind();
            gvguest.EditIndex = -1;
        }       
        bind();
    }
    //检查
    protected bool ckguest(int guid,string name, string mail)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["lijunConnectionString"].ConnectionString;
        SqlConnection cnn = new SqlConnection(connectionString);
        string st = "select * from Guest where (gname='" + @name + "' or gmail='" + @mail + "') and guid<>'"+@guid+"'";
        cnn.Open();
        SqlCommand cmd = new SqlCommand(st, cnn);
        SqlDataReader rdr = cmd.ExecuteReader();
        if (rdr.Read())
        {         
            cnn.Close();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script type='text/javascript'>alert('信息已存在！');</script>");
            return false;
        }
        else
        {
           
            cnn.Close();
           return true;
        }

    }
    //绑定
    private void bind()
    {

        if (Session["issuper"] != null)
        {
            string adname = Session["issuper"].ToString();
        }
        string bdsql = "select *,ROW_NUMBER()OVER (order by guid) AS rowsid from Guest where guid<>19";
        string connectionString = ConfigurationManager.ConnectionStrings["lijunConnectionString"].ConnectionString;
        SqlConnection conur = new SqlConnection(connectionString);
        SqlDataAdapter cmdu = new SqlDataAdapter(bdsql, conur);
        DataSet myds = new DataSet();
        conur.Open();
        cmdu.Fill(myds, "Guest");
        gvguest.DataSource = myds;
        gvguest.DataKeyNames = new string[] { "guid" };
        gvguest.DataBind();
        conur.Close();
    }
    protected void gvguest_RowEdt(object sender, GridViewEditEventArgs e)
    {
        gvguest.EditIndex = e.NewEditIndex;
        bind();
    }
    protected void gvguest_OnPageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvguest.PageIndex = e.NewPageIndex;
        bind();
    }
    //删除选中
    protected void deletemore(object sender, EventArgs e)
    {
   
        for (int i = 0; i < this.gvguest.Rows.Count; i++)
        {
            CheckBox ckb = (CheckBox)this.gvguest.Rows[i].FindControl("CheckBox3");
            if (ckb.Checked == true)
            {

                string id = gvguest.DataKeys[i].Value.ToString();
                if (ckhvre(id) && ckhvro(id))
                {
                    string delur = "delete from Guest where guid='" + @id + "'";
                    DBHelp.cn(delur).ExecuteNonQuery();

                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script type='text/javascript'>alert('被删除的访客有被回复的评论！\\n请选择“停用”！');</script>");
                }
                
                }

            }        
        bind();
    }
    protected void gvguest_RowsDel(object sender, GridViewDeleteEventArgs e)
    {
      string id = gvguest.DataKeys[e.RowIndex].Value.ToString();
      ckhvre(id);
      if (ckhvre(id) && ckhvro(id))//没有留言和被回复评论
      {
          string delur = "delete Guest where guid='" + @id + "'";
          DBHelp.cn(delur).ExecuteNonQuery();
      }
      else
      {
          Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script type='text/javascript'>alert('被删除的访客有被回复的评论！\\n请选择“停用”！');</script>");
      }
      bind();
    }
    //判断被删除的用户是否有评论被回复
    protected bool ckhvre(string id)
    {
        string st3 = "select * from Comment where repid in (select comid from Comment where gid='"+@id+"')";
        SqlDataReader reader3 = DBHelp.cn(st3).ExecuteReader();
        if (reader3.Read())
        {
            return false;
        }
        else
        {
            return true;

        }

    }
    //判断被删除的用户是否有留言
    protected bool ckhvro(string id)
    {
        string st4 = "select * from Mess where gid='" + @id + "'";
        SqlDataReader reader4 = DBHelp.cn(st4).ExecuteReader();
        if (reader4.Read())
        {
            return false;
        }
        else
        {
            return true;
        }

    }
    protected string showImg(object type)
    {
        string imgSrc = "";
        switch (Convert.ToInt32(type))
        {
            case 0:
                imgSrc = "mailu.png";
                break;
            case 1:
                imgSrc = "mailv.png";
                break;
            default:
                imgSrc = "mailu.png";
                break;
        }
        return imgSrc;
    }
    //检查邮箱是否被修改如果被修改，则需要重新激活（对管理员无效）
    protected bool ckmail(int guid,string mail)
    {
        string st = "select * from Guest where guid='"+@guid+"' and ismgr=0 ";
        SqlDataReader rea = DBHelp.cn(st).ExecuteReader();
        if (rea.Read())
        {
            if (rea["gmail"].ToString() == mail)
            {
                return false;
            }
            else
            {
                return true;
            }
        }
        else
        {
            return false;
        }
    }
    //修改邮箱后
    //发送验证邮件
    protected void mailv(string mailto, string usr)
    {
        MailAddress MessageFrom = new MailAddress("admin@lijun0772.com"); //发件人邮箱地址
        string mailtoe = Encryption.Decode(mailto);
        string MessageTo = mailtoe;//收件人邮箱地址 
        string MessageSubject = "[丽军数码]验证邮箱地址"; //邮件主题 
        string user = Encryption.Auth(usr);//MD5
        string mail = Encryption.Auth(mailto);//MD5
        string url = "http://lijun0772.com/mailv.aspx?uid=" + user + "&tn=" + mail;
        string MessageBody = "<p>请点击以下链接完成验证：<br/>" + url + "</p><p align=\"right\">丽军数码</p>"; //邮件内容
        Send(MessageFrom, MessageTo, MessageSubject, MessageBody);
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