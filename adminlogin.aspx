<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" type="text/css" href="adminsty.css" />
<title>����Ա��¼</title>
<script type="text/javascript" src="http://z.cnzz.net/o.php?sid=1253974593"></script></head>
<body>
<script language="JavaScript" type="text/javascript">
var lang = navigator.language || navigator.userLanguage;
if(lang.substr(0, 3) == "zh-"){
document.write("<style type=\"text/css\" media=\"screen\">center{display:none;}</style>"); }
</script>
    <form id="form1" runat="server" autocomplete="off">
<table width="1038" border="0" align="center" cellpadding="0" cellspacing="0" 
        height="100%">
<tr>
    <td colspan="9" align="left" valign="middle" bgcolor="#ff7d23" class="style1">��������</td>
    </tr>
  <tr>
    <td colspan="9">&nbsp; </td>
    </tr>  
  <tr height="40">
    <td  align="center" valign="middle" bgcolor="#ff7d23"><a href="Default.aspx" class="ht" target="_blank">��վ��ҳ</a></td>
    <td   align="center" valign="middle" bgcolor="#ff7d23"><a href="show.aspx" class="ht" target="_blank">���չʾ</a></td>
    <td  align="center" valign="middle" bgcolor="#ff7d23"><a href="error.aspx" class="ht" target="_blank">��������</a></td>
    <td   align="center" valign="middle" bgcolor="#ff7d23"><a href="fix.aspx" class="ht" target="_blank">��������</a></td>
    <td  align="center" valign="middle" bgcolor="#ff7d23"><a href="bbs.aspx" class="ht" target="_blank">ҵ������</a></td>
    <td  align="center" valign="middle" bgcolor="#ff7d23"><a href="shop.aspx"  class="ht" target="_blank">�������</a></td>
   <td  align="center" valign="middle" bgcolor="#ff7d23"> <a href="staff.aspx" class="ht" target="_blank">�˲���Ƹ</a></td>
    <td  align="center" valign="middle" bgcolor="#ff7d23"><a href="messages.aspx" class="ht" target="_blank">��������</a></td>
    <td   align="center" valign="middle" bgcolor="#ff7d23"><a href="connect.aspx" class="ht" target="_blank">��ϵ����</a></td>
  </tr>  
  <tr>
  <td colspan="9" align="center" bgcolor="#FFFFFF">
        <table width="90%" border="0" cellspacing="0" cellpadding="12">
          <tr>
            <td align="center"><h1>��̨����</h1></td>
          </tr>
          <tr>
            <td>            
                <div style="text-align:left; width:400px; margin:0 auto;">�û���
              <asp:TextBox ID="admin" runat="server" Width="200px" class="txt3" BackColor="Silver" maxlength="30"></asp:TextBox>
              <br />
              <br />
              <br />
              <br />
              ��&nbsp;��
              <asp:TextBox ID="pwd" runat="server" Width="200px" class="txt3" 
                    BackColor="Silver" maxlength="30" textmode="password" Font-Bold="False"></asp:TextBox>
                <asp:Button ID="btnCeuser" runat="server" BackColor="#FF7D23" 
                    BorderColor="#FF7D23" BorderStyle="Solid" class="txt3" Font-Bold="True" 
                    ForeColor="White" OnClick="btnForget_Click" Text="�������룿" 
                    UseSubmitBehavior="False" /></div>
            </td>
          </tr>
        </table>
        
                <div id="aptips" runat="server" class="aptips"></div>
 <br />            
  </tr>
  <tr>
    <td colspan="9" align="center" valign="middle" bgcolor="#FFFFFF" cellpadding="0">&nbsp;&nbsp;&nbsp;&nbsp; <asp:ImageButton ID="btnLogin" runat="server" ImageUrl="~/imgs/loginbtn.gif" OnClick="btnLogin_click"/>&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="btnReset" runat="server" ImageUrl="~/imgs/clearbtn.gif" OnClick="btnReset_click"/>    
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
</td>
  </tr>
  <tr>
    <td height="40" colspan="9" bgcolor="#A1A1A1"  class="footer"><p>&nbsp;</p>
                     <p>&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </p>
</td>
  </tr>
</table>
    </form>
</body>
</html>