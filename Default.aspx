<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" Debug="true" %>
<%@ Register src="gotop.ascx" tagname="gotop" tagprefix="uc2" %>
<%@ Register src="articlelist.ascx" tagname="articlelist" tagprefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>	
<meta name="google-site-verification" content="Vb_KbImWMfnVIppibLDoQ_Z9wpyzbCbu21q0rX6w8as" />
<meta name="keywords" content="������������������룬���ά�ޣ��������ά�ޣ����������������������������ͳ�����������"/>
<meta name="description" content="������������������룬����רҵ����ά�޸���Ʒ��������������ܡ����ǡ����ᡢ���¡��῵����⣩����ͳ���������ơ���ϴ��ͷ���߼ۻ��ո��ֶ����������" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" type="text/css" href="style.css" />
<title>��������-�������ά������</title>
<style type="text/css">
#pic{ width:100%;} 
#words{ position:absolute; 
left:50%;   
margin-left:-517px;  /*����Ϊ��ȵ�һ��*/
top:20px;
  }

a:link {text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: underline;
}
a:active {
	text-decoration: none;
} 

    .style2
    {
        font-size: 1.5em;
        font-family: ����, Arial, Helvetica, sans-serif;
        color: #FFFFFF; letter-spacing:0.3em;
    }
    </style>
<script type="text/javascript" src="http://z.cnzz.net/o.php?sid=1253974593"></script></head>
<body>
<script language="JavaScript" type="text/javascript">
var lang = navigator.language || navigator.userLanguage;
if(lang.substr(0, 3) == "zh-"){
document.write("<style type=\"text/css\" media=\"screen\">center{display:none;}</style>"); }
</script>

<form id="form1" runat="server">
<div id="words">
<table align="center" width="1035px" border="0" cellspacing="0" cellpadding="0" style="height:500px;text-align: center; " >
  <tr>
    <td colspan="8"><div style="float:left; padding:20px;">
        <asp:Image ID="Image3" runat="server" />
        </div>
        <span class="style2">����������Ӱ����ά������</span><br />
        <br />
        <div id="intro" runat="server" style="color:White; font-size:medium; line-height:2em; text-align:left;"></div>
         <br />
        <asp:ImageButton ID="ImageButton1" runat="server"   
            ImageUrl="~/imgs/class/more.gif" onclick="ImageButton1_Click" 
            ToolTip="�˽����" /><script>

                                 //document.getElementById('a1').title='testaaa';
                                 var aa = document.getElementsByTagName('img');
                                 for (var i = 0; i < aa.length; i++) {
                                     if (aa[i].getAttribute("data-tag") == null)
                                         aa[i].setAttribute("data-tag", "img_1");
                                 }

                                 //��document.getElementById('a1').setAttribute("title","testaaa")

</script>
        <br /></div>
      </td>
  </tr>
   <tr height="40">

    
    <td   align="center" valign="middle" class="topbar"><a href="show.aspx" class="ht">���չʾ</a></td>
    <td  align="center" valign="middle" class="topbar"><a href="error.aspx" class="ht">��������</a></td>
    <td   align="center" valign="middle" class="topbar"><a href="fix.aspx" class="ht">��������</a></td>
     <td align="center" valign="middle" class="topbar"><a href="bbs.aspx" class="ht">ҵ������</a></td>
     <td  align="center" valign="middle" class="topbar"><a href="shop.aspx" class="ht">�������</a></td>
   <td  align="center" valign="middle" class="topbar"> <a href="staff.aspx" class="ht">�˲���Ƹ</a></td>
    <td  align="center" valign="middle" class="topbar"><a href="messages.aspx" class="ht">��������</a></td>
    <td   align="center" valign="middle" class="topbar"><a href="connect.aspx" class="ht">��ϵ����</a></td> </tr>
  
</table>
<br />
    <div runat="server" 
        style="text-align: left; font-size: small; color: #FFFFFF; line-height:5px; width:700px; float:left;">�������ӣ�
        <a class="foot" href="http://www.lzsm168.com/" target="_blank">�������</a>&nbsp; 
        <a class="foot" href="messages.aspx" target="_blank">[��������]</a>&nbsp;<br />
     <p><asp:Label ID="Label3" runat="server" Text="" ></asp:Label></p>
      <p><a href="adminlogin.aspx" class="foot">��¼��̨</a>&nbsp;&nbsp;<a href="http://jsunplace.tumblr.com/" class="foot">���߲���</a>&nbsp;&nbsp;<a href="about.html" class="foot">���ڱ�վ</a>&nbsp;&nbsp;<script type="text/javascript">                              var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://"); document.write(unescape("%3Cspan id='cnzz_stat_icon_1253756923'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s4.cnzz.com/z_stat.php%3Fid%3D1253756923%26show%3Dpic1' type='text/javascript'%3E%3C/script%3E"));</script></p></div>
      
      <div style="float:right; width:250px;">
          <a href="http://weixin.qq.com/" target="_blank"><asp:Image ID="Image1" runat="server" AlternateText="΢��" BorderStyle="None" 
              Height="100px" ToolTip="΢��ɨһɨ" Width="100px"  ImageUrl="~/imgs/class/qrcodewx.jpg" /></a>&nbsp;&nbsp;<a href="http://wpa.qq.com/msgrd?v=3&uin=340648962&site=��������&menu=yes" target="_blank"><asp:Image 
              ID="Image2" runat="server" AlternateText="QQ" BorderStyle="None" 
              Height="100px" ImageUrl="~/imgs/class/qrcodeqq.jpg" ToolTip="���ֱ�ӷ���QQ��Ϣ..." 
              Width="100px" /></a></div></div> </form>
<script src="js/bdshare.js" charset="utf-8"></script>            
              
</body>
</html>