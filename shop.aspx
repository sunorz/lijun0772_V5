<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shop.aspx.cs" Inherits="shop"%>
<%@ Register src="gotop.ascx" tagname="gotop" tagprefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="google-site-verification" content="Vb_KbImWMfnVIppibLDoQ_Z9wpyzbCbu21q0rX6w8as" />
<meta name="keywords" content="�������룬���ά�ޣ��������ά�ޣ������������ά�ޣ����������������������������ͳ�����������"/>
<meta name="description" content="�������룬����רҵ����ά�޸���Ʒ��������������ܡ����ǡ����ᡢ���¡��῵����⣩����ͳ���������ơ���ϴ��ͷ���߼ۻ��ո��ֶ����������" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" type="text/css" href="style.css" />
<title>��������-�������</title>
    <style type="text/css">
        .style2
        {
            color: #FF7D23;
            font-weight: bold;
            font-size: 15px;
        }
#title{
	line-height:5pt;
	font-family:"����";
	font-size:20pt;
    color:#ffffff;
    line-height:40pt;
	letter-spacing:8pt;
}
    body {
	background-image: url(imgs/class/bg6.jpg);
	background-repeat: repeat;
	background-attachment: fixed;
}
    a:link {
	text-decoration: none;
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
.pager{ width:100%;  margin:10px; line-height:20px; display:block;}
.pager span { border:1px solid #F59223; margin: 0 5px; padding: 1px 6px; float:left;background-color:#F59223;color:White;}
.pager a {
    border: 1px solid #F59223;
    display: block;
    overflow:hidden;
    float: left;
    margin: 0 5px;
    padding: 1px 6px;  color:#F59223;
    background-color:White; 
}
.pager a:hover { border:1 solid #F59223; background-color:#F59223; color:White; margin: 0 5px; padding: 1px 6px;}
</style><script type="text/javascript" src="http://z.cnzz.net/o.php?sid=1253974593"></script></head>
<body>
<div id="apDiv2" class="toplnk"><uc2:gotop ID="gotop1" runat="server" /></div>
<script language="JavaScript" type="text/javascript">
var lang = navigator.language || navigator.userLanguage;
if(lang.substr(0, 3) == "zh-"){
document.write("<style type=\"text/css\" media=\"screen\">center{display:none;}</style>"); }
</script>

    <form id="form1" runat="server">
<table width="1038" border="0" align="center" cellpadding="0" cellspacing="0" class="layoute">
  <tr>
     <td height="49px" valign="middle" class="foote"><img src="imgs/logo.gif" width="100px" height="49px"  border="0"/>����������Ӱ����ά������<div style="position:absolute; right:20px; bottom:16px;"><a href="showsea.aspx" title="�������"><img src="imgs/search.gif" width="40" height="48" border="0" /></a></div></td>
  </tr>
  <tr>
    <td height="20" colspan="9"></td>
  </tr>  
  <tr>
  <td colspan="9" height="20"><table align="center" cellspacing="0" width="1035px">
      <tr>
     <td  align="center" valign="middle" class="topbar"><a href="Default.aspx" class="ht">��վ��ҳ</a></td>
    <td   align="center" valign="middle" class="topbar"><a href="show.aspx" class="ht">���չʾ</a></td>
    <td  align="center" valign="middle" class="topbar"><a href="error.aspx" class="ht">��������</a></td>
    <td   align="center" valign="middle" class="topbar"><a href="fix.aspx" class="ht">��������</a></td>
    <td  align="center" valign="middle" class="topbar"><a href="bbs.aspx" class="ht">ҵ������</a></td>
    <td  align="center" valign="middle" class="ht" bgcolor="#E96800">�������</td>
   <td  align="center" valign="middle" class="topbar"> <a href="staff.aspx" class="ht">�˲���Ƹ</a></td>
    <td  align="center" valign="middle" class="topbar"><a href="messages.aspx" class="ht">��������</a></td>
    <td   align="center" valign="middle" class="topbar"><a href="connect.aspx" class="ht">��ϵ����</a></td>
 </tr>
      </table>
      </td>
    
  </tr>
  <tr>
    <td colspan="9" align="center" valign="middle" cellpadding="0">
<table width="100%" border="0" cellspacing="0" cellpadding="12">
      <tr>
        <td colspan="9" align="middle" valign="middle"><img src="imgs/class/img6.gif" width="200" height="194" data-tag="hdimg" /><div id="title" runat="server"></div></td>
        </tr>
      <tr>
        <td style=" background-color:#FFFFEC;" class="contents">
                    <asp:Label ID="Label1" runat="server" 
                Text="" Width="100%" style="margin-top: 0px; text-align: left;"></asp:Label>
            <script>

                var aa = document.getElementsByTagName('img');
                for (var i = 0; i < aa.length; i++) {
                    if (aa[i].getAttribute("data-tag") == null)
                        aa[i].setAttribute("data-tag", "img_1");
                }
</script>
            <p></p>
            <asp:Label ID="labPageNumber" runat="server"  Width="100%"></asp:Label><br/></td>
        </tr><tr><td style="background-color:white;"><div class="bdsharebuttonbox" data-tag="ppt"><a href="#" class="bds_qzone" data-cmd="qzone" title="����QQ�ռ�"></a><a href="#" class="bds_tsina" data-cmd="tsina" title="��������΢��"></a><a href="#" class="bds_tqq" data-cmd="tqq" title="������Ѷ΢��"></a><a href="#" class="bds_weixin" data-cmd="weixin" title="����΢��"></a><a href="#" class="bds_print" data-cmd="print" title="������ӡ"></a><a href="#" class="bds_copy" data-cmd="copy" title="����������ַ"></a></div></td></tr>       
    </table></td>
  </tr>
  <tr>
    <td height="40" colspan="9">&nbsp;</td>
  </tr>
  <tr>
    <td height="40" colspan="9" class="footer">
           <p>&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></p>
      <p>&nbsp;&nbsp;<a href="adminlogin.aspx" class="foot">��¼��̨</a>&nbsp;&nbsp;<a href="http://jsunplace.tumblr.com/" class="foot">���߲���</a>&nbsp;&nbsp;<a href="about.html" class="foot">���ڱ�վ</a></p>
  </td>
  </tr>
</table>
    </form><script src="js/bdshare.js" charset="utf-8"></script>
</body>
</html>
