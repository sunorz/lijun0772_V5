<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fix.aspx.cs" Inherits="fix"%>
<%@ Register src="gotop.ascx" tagname="gotop" tagprefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="google-site-verification" content="Vb_KbImWMfnVIppibLDoQ_Z9wpyzbCbu21q0rX6w8as" />
<meta name="keywords" content="丽军数码，相机维修，数码相机维修，柳州数码相机维修，修相机，修理相机，修照相机，传统相机，相机配件"/>
<meta name="description" content="丽军数码，柳州专业快速维修各种品牌数码相机（佳能、三星、索尼、宾德、尼康、理光）、传统相机、闪光灯、清洗镜头、高价回收各种二手数码相机" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" type="text/css" href="style.css" />
<title>丽军数码-报修流程</title>
    <style type="text/css">
        .style2
        {
            color: #FF7D23;
            font-weight: bold;
            font-size: 15px;
        }
#title{
	line-height:5pt;
	font-family:"楷书";
	font-size:20pt;
    color:#ffffff;
    line-height:40pt;
	letter-spacing:8pt;
}
    body {
	background-image: url(imgs/class/bg4.jpg);
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
    <td height="49px" valign="middle" class="foote"><img src="imgs/logo.gif" width="100px" height="49px"  border="0"/>丽军数码摄影器材维修中心<div style="position:absolute; right:20px; bottom:16px;"><a href="showsea.aspx" title="点此搜索"><img src="imgs/search.gif" width="40" height="48" border="0" /></a></div></td>
  <tr>
    <td height="20" colspan="9"></td>
  </tr>  
  <tr>
  <td colspan="9" height="20"><table align="center" cellspacing="0" width="1035px">
      <tr>

     <td  align="center" valign="middle" class="topbar"><a href="Default.aspx" class="ht">网站首页</a></td>
    <td   align="center" valign="middle" class="topbar"><a href="show.aspx" class="ht">配件展示</a></td>
    <td  align="center" valign="middle" class="topbar"><a href="error.aspx" class="ht">常见故障</a></td>
    <td   align="center" valign="middle" class="ht" bgcolor="#E96800">报修流程</td>
    <td  align="center" valign="middle" class="topbar"><a href="bbs.aspx" class="ht">业界新闻</a></td>
    <td  align="center" valign="middle" class="topbar"><a href="shop.aspx" class="ht">网店介绍</a></td>
   <td  align="center" valign="middle" class="topbar"> <a href="staff.aspx" class="ht">人才招聘</a></td>
    <td  align="center" valign="middle" class="topbar"><a href="messages.aspx" class="ht">网上留言</a></td>
    <td   align="center" valign="middle" class="topbar"><a href="connect.aspx" class="ht">联系我们</a> </tr>
      </table>
      </td>
    
  </tr>  
  <tr>
    <td colspan="9" align="center" valign="middle" cellpadding="0">
<table width="100%" border="0" cellspacing="0" cellpadding="12">
      <tr>
        <td colspan="9" align="middle" valign="middle"><img src="imgs/class/img4.gif" width="200" height="194" data-tag="hdimg" /><div id="title" runat="server"></div></td>
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
        </tr>  <tr><td style="background-color:white;"><div class="bdsharebuttonbox" data-tag="ppt"><a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a><a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a><a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a><a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a><a href="#" class="bds_print" data-cmd="print" title="分享到打印"></a><a href="#" class="bds_copy" data-cmd="copy" title="分享到复制网址"></a></div></td></tr>          
    </table></td>
  </tr>
  <tr>
    <td height="40" colspan="9">&nbsp;</td>
  </tr>
  <tr>
    <td height="40" colspan="9" class="footer">
           <p>&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></p>
      <p>&nbsp;&nbsp;<a href="adminlogin.aspx" class="foot">登录后台</a>&nbsp;&nbsp;<a href="http://jsunplace.tumblr.com/" class="foot">作者博客</a>&nbsp;&nbsp;<a href="about.html" class="foot">关于本站</a></p>
  </td>
  </tr>
</table>
    </form><script src="js/bdshare.js" charset="utf-8"></script>
</body>
</html>
