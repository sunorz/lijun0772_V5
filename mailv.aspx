<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mailv.aspx.cs" Inherits="mailv" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
<meta http-equiv="refresh" content="5; url=Default.aspx"/>
<link rel="stylesheet" type="text/css" href="style-157.css" />
    <title>丽军数码-验证邮件</title>
</head>
<body>
    <script language="JavaScript" type="text/javascript">
        var lang = navigator.language || navigator.userLanguage;
        if (lang.substr(0, 3) == "zh-") {
            document.write("<style type=\"text/css\" media=\"screen\">center{display:none;}</style>");
        }

</script>
    <form id="form1" runat="server">

<div style=" background:url(imgs/loading.gif) no-repeat center; width:100%; height:120px;"></div>
    
    <p align="center">
        <asp:Image ID="Image1" runat="server" />
        <asp:Label ID="Label1" runat="server" style="font-size: x-large; font-weight: 700; color: #FF0000;"></asp:Label><br/><br/>正在跳转至首页，请等待&hellip;&hellip;</p>


    </form>
</body>
</html>
