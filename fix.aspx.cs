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

public partial class fix: System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["lijunConnectionString"].ConnectionString;
            SqlConnection cnn = new SqlConnection(connectionString);
            string st = "select * from Class where classid=3";
            cnn.Open();
            SqlCommand cmd = new SqlCommand(st, cnn);
            SqlDataReader rdr = cmd.ExecuteReader();
            if (rdr.Read())
            {
                this.Label1.Text = OutputByLine(rdr["content"].ToString());//��ȡ���ȴ�������ݿ��HTML����
                title.InnerText= rdr["cltitle"].ToString();
                cnn.Close();
                footerload();
            }
            else
            {
                this.Label1.Text = "���������ݣ���";
                cnn.Close();
            }


        }
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
     public string OutputByLine(string strContent)//ͨ���趨��������ҳ 
     {
         int pageSize = int.Parse(ConfigurationManager.AppSettings["pageSize"]);//ÿҳ��ʾ������CONFIG�ļ���ȡ�� 
         string lineBreak = ConfigurationManager.AppSettings["lineBreak"];//���з���CONFIG�ļ���ȡ�� 
         strContent = strContent.Replace("\r\n", "");
         string[] strLined = strContent.Split(new string[] { lineBreak }, StringSplitOptions.RemoveEmptyEntries);//��DIVΪ���з� 
         int pageCount = strLined.Length / pageSize;
         int pageCountPlus = strLined.Length % pageSize == 0 ? 0 : 1;//����ҳ 
         pageCount = pageCount + pageCountPlus;//��ҳ�� 
         int currentPage = 1;//��ǰҳ�� 
         string displayText = null;
         string epage = Request.QueryString["page"];
         if (epage != null) //��ȡ��ҳҳ�� 
         {
             if (epage.Trim() == "")        //������
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
         string pageInfo = "";//ҳ����Ϣ 
         for (int i = 1; i < pageCount + 1; i++)
         {
             if (i == currentPage)
             {
                 pageInfo += "<span>" + i + "</span>";
                 pageInfo = "<div class='pager'>" + pageInfo + "<div>";
             }
             else
             {
                 pageInfo += "<a href=fix.aspx?" + "page=" + i + ">" + i + "</a>";
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
}
