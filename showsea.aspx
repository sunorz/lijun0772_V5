<%@ Page Language="C#" AutoEventWireup="true" CodeFile="showsea.aspx.cs" Inherits="showsea"%>
<%@ Register src="gotop.ascx" tagname="gotop" tagprefix="uc1" %>
<%@ Register src="baidu.ascx" tagname="baidu" tagprefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" type="text/css" href="style.css" />
<title>��������-վ������</title>
 <style type="text/css">
        #title{
	line-height:5pt;
	font-family:"����";
	font-size:20pt;
    color:#ffffff;
    line-height:40pt;
	letter-spacing:8pt;
}
    body {
	background-image: url(imgs/class/bg10.jpg);
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
</style><script type="text/javascript" src="http://z.cnzz.net/o.php?sid=1253974593"></script></head>
<body>

<div id="apDiv2" class="toplnk"><uc1:gotop ID="gotop1" runat="server" /></div>
<script language="JavaScript" type="text/javascript">
    var lang = navigator.language || navigator.userLanguage;
    if (lang.substr(0, 3) == "zh-") {
        document.write("<style type=\"text/css\" media=\"screen\">center{display:none;}</style>");
    }
</script>
<table width="1038" border="0" align="center" cellpadding="0" cellspacing="0" class="layoute">
  <tr>
    <td height="49px" colspan="8" valign="middle" class="foote"><a href="Default.aspx" title="������ҳ"><img src="imgs/logo.gif" width="100px" height="49px" border="0"/></a>����������Ӱ����ά������</td>
  </tr>
  <tr>
    <td height="20" colspan="9"></td>
  </tr>  
  <tr>
  <td colspan="9" height="20"><table align="center" cellspacing="0" width="1035px">
      <tr height="40px">
     <td  align="center" valign="middle" class="topbar"><a href="Default.aspx" class="ht">
         ��վ��ҳ</a></td>
    <td   align="center" valign="middle" class="topbar"><a href="show.aspx" class="ht">
        ���չʾ</a></td>
    <td  align="center" valign="middle" class="topbar"><a href="error.aspx" class="ht">
        ��������</a></td>
    <td   align="center" valign="middle" class="topbar"><a href="fix.aspx" class="ht">
        ��������</a></td>
    <td  align="center" valign="middle" class="topbar"><a href="bbs.aspx" class="ht">
        ҵ������</a></td>
    <td  align="center" valign="middle" class="topbar"><a href="shop.aspx" class="ht">
        �������</a></td>
   <td  align="center" valign="middle" class="topbar"><a href="staff.aspx" class="ht">
       �˲���Ƹ</a></td>
    <td  align="center" valign="middle" class="topbar"><a href="messages.aspx" class="ht">
        ��������</a></td>
     <td  align="center" valign="middle" class="topbar"><a href="connect.aspx" class="ht">
         ��ϵ����</a></td>
   </tr>
      </table>
      </td>
    
  </tr> 
  <tr>
    <td colspan="9" align="center" valign="middle" cellpadding="0">
<table width="100%" border="0" cellspacing="0" cellpadding="12">
      <tr>
        <td colspan="9" align="middle" valign="middle"><img src="imgs/class/img10.gif" width="200" height="194" /><div id="title" runat="server">
            վ������</div></td>
        </tr>
  <tr>
    <td colspan="9" align="center"  valign="middle" bgcolor="#FFFFFF" style="text-align: center">
        <br /><div align="center" id="baidu" runat="server" style=" margin-left:auto; margin-left:auto;" visible="false"><uc2:baidu ID="baidu1" runat="server" />
        </div>
<br />
<div id="google" runat="server" visible="false"><script>
         (function() {
             var cx = '016135306708263988424:dm1tpyezaei';
             var gcse = document.createElement('script');
             gcse.type = 'text/javascript';
             gcse.async = true;
             gcse.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') +
        '//www.google.com/cse/cse.js?cx=' + cx;
             var s = document.getElementsByTagName('script')[0];
             s.parentNode.insertBefore(gcse, s);
         })();
</script>
<gcse:search></gcse:search>
</div><br />
        ���� ����</td>
  </tr>
  <tr>
    <td colspan="9">&nbsp;</td>
  </tr>
  <tr>
    <td  class="footer" height="40" colspan="9" bgcolor="#A1A1A1"><p>&nbsp;</p>
                <p> &nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text=""></asp:Label></p>
             <p>&nbsp;&nbsp;<a href="adminlogin.aspx" class="foot">��¼��̨</a>&nbsp;&nbsp;<a href="http://jsunplace.tumblr.com/" class="foot">���߲���</a>&nbsp;&nbsp;<a href="about.html" class="foot">���ڱ�վ</a></p>
</td>
  </tr>
</table>

</body>
</html>
