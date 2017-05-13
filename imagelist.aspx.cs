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

public partial class imagelist: System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            showname();
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
    }

    protected void btnBack_click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("bbs.aspx");
    }
    protected void showname()
    {
        string connectionString = ConfigurationManager.ConnectionStrings["lijunConnectionString"].ConnectionString;
        SqlConnection cnn = new SqlConnection(connectionString);
        string alid = Request.QueryString["aid"];
        Label1.Text = alid;
        string st = "select * from Album where alid='"+@alid+"'";
        cnn.Open();
        SqlCommand cmd = new SqlCommand(st,cnn);
        SqlDataReader rdr = cmd.ExecuteReader();
        if (rdr.Read())//����rdr[]֮ǰ������if
        {
            Label1.Text = "������ᡶ" + rdr["alname"].ToString() + "���е���Ƭ��";

        }
        else//id�������
        {
            ListView1.Visible = false;
            Label1.Text = "��᲻���ڻ��ѱ�ɾ����";
            share.Visible = false;
        }
        cnn.Close();
    }
    //����
    public string SubStr(object caption, int nLeng)
    {
        string sString = caption.ToString().Trim(); 
        if (sString.Length <= nLeng) 
        {
            return sString;
        }
        else {
            string sNewStr = sString.Substring(0, nLeng); 
            sNewStr = sNewStr + "..."; return sNewStr;
        }
    }

   
}
