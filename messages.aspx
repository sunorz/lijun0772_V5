<%@ Page Language="C#" AutoEventWireup="true" CodeFile="messages.aspx.cs" Inherits="messages" Debug="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" type="text/css" href="style.css" />
<title>��������-��������</title>
 <script src="js/jquery.js"  type="text/javascript"></script><script type="text/javascript" src="http://z.cnzz.net/o.php?sid=1253974593"></script></head>
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
	background-image: url(imgs/class/bg8.jpg);
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
#myemail, .newemail, .newemailtitle{    
	cursor:default;
	line-height:30px;
}
        .style3
        {
            font-size: small; color:gray;
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
        .style4
        {
            text-align: left;
        }
        </style>

<body>
<script language="JavaScript" type="text/javascript">
    var lang = navigator.language || navigator.userLanguage;
    if (lang.substr(0, 3) == "zh-") {
        document.write("<style type=\"text/css\" media=\"screen\">center{display:none;}</style>");
    }
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
     <td  align="center" valign="middle" class="topbar"><a href="Default.aspx" class="ht">
         ��վ��ҳ</a></td>
    <td   align="center" valign="middle" class="topbar"><a href="show.aspx" class="ht">���չʾ</a></td>
    <td  align="center" valign="middle" class="topbar"><a href="error.aspx" class="ht">��������</a></td>
    <td   align="center" valign="middle" class="topbar"><a href="fix.aspx" class="ht">��������</a></td>
    <td  align="center" valign="middle" class="topbar"><a href="bbs.aspx" class="ht">ҵ������</a></td>
    <td  align="center" valign="middle" class="topbar"><a href="shop.aspx" class="ht">�������</a></td>
   <td  align="center" valign="middle" class="topbar"><a href="staff.aspx" class="ht">�˲���Ƹ</a></td>
    <td  align="center" valign="middle" class="ht" bgcolor="#E96800">��������</td>
    <td   align="center" valign="middle" class="topbar"><a href="connect.aspx" class="ht">
        ��ϵ����</a></td>
 </tr>
      </table>
      </td>
    
  </tr>
  <tr>
    <td colspan="9" align="center" valign="middle" cellpadding="0">
<table width="100%" border="0" cellspacing="0" cellpadding="12">
      <tr>
        <td colspan="9" align="middle" valign="middle"><img src="imgs/class/img8.gif" width="200" height="194" /><div id="title" runat="server">
            ���԰�</div></td></tr>
        <tr>
          <td align="center" bgcolor="#FFFFFF">              <br />
              <br /><asp:Button ID="btnnew" runat="server" BackColor="#FF7D23" 
                              BorderColor="#FF7D23" BorderStyle="Solid" class="txt3" Font-Bold="True" 
                              ForeColor="White" OnClick="btnnew_Click" Text="��Ҫ����" 
                  UseSubmitBehavior="False" />
              <br />
              <br />
            </td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF" align="center"><div id="dvmess" class="divcss" runat="server" visible="false" style="padding:0 0 40px 40px;">
             <div id="dvclose" style="text-align: right" visible="false">
              <asp:ImageButton ID="close" runat="server" title="�ر�" 
                  ImageUrl="~/imgs/close.gif" CausesValidation="False" onclick="close_Click"/></div><br />
              <br />
              <asp:Label ID="Label3" runat="server" Text="�����ߣ�"></asp:Label>
              &nbsp;<asp:TextBox ID="txtcname" runat="server" BackColor="Silver" class="txt3" 
                  maxlength="20" Width="275px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtcname" CssClass="aptips" 
                    ErrorMessage="�ǳƲ����Ϲ涨��" 
                    ValidationExpression="^[\u4E00-\u9FA5A\a-zA-Z][\u4E00-\u9FA5A-Za-z0-9]{3,14}$" Display="Dynamic"></asp:RegularExpressionValidator>
              <br /><span class="style3">
              <br />
              <img src="imgs/info.png" height="18" width="18" />&nbsp;�ǳ��벻Ҫ�����ֿ�ͷ��������������ţ��ҿ��Ƴ�����4��15���֡�
              <br />
              </span><br />
            <asp:Label ID="Label1" runat="server" Text="�����ַ��"></asp:Label>
            <asp:TextBox ID="txtcmail" runat="server" Width="285px" BackColor="Silver" 
                  class="txt3" maxlength="50" AutoCompleteType="Disabled" 
                  ></asp:TextBox>
            <script type="text/javascript">
                var nowid;
                var totalid;
                var can1press = false;
                var emailafter;
                var emailbefor;
                $(document).ready(function() {
                    $("#txtcmail").focus(function() { //�ı����ý��㣬����Email��ʾ��
                        $("#myemail").remove();
                        $(this).after("<div id='myemail' style='width:288px; height:auto; background:#fff; color:#6B6B6B; position:absolute; left:380px; top:675px; border:1px solid #ccc;z-index:5px; '></div>");
                        if ($("#myemail").html()) {
                            $("#myemail").css("display", "block");
                            $(".newemail").css("width", $("#myemail").width());
                            can1press = true;
                        } else {
                            $("#myemail").css("display", "none");
                            can1press = false;
                        }
                    }).keyup(function() { //�ı�����������ʱ����ʾEmail��ʾ��ͳ���Email
                        var press = $("#txtcmail").val();
                        if (press != "" || press != null) {
                            var emailtxt = "";
                            var emailvar = new Array(
"@sina.com",
"@163.com",
"@qq.com",
"@126.com",
"@vip.sina.com",
"@sina.cn",
"@hotmail.com",
"@gmail.com",
"@sohu.com",
"@139.com",
"@wo.com.cn",
"@189.cn",
"@21cn.com",
"@live.cn",
"@vip.qq.com",
"@yeah.net");
                            totalid = emailvar.length;
                            var emailmy = "<div class='newemail' style='width:170px; color:#6B6B6B; overflow:hidden;'><font color='#ff6d25'>" + press + "</font></div>";
                            if (!(isEmail(press))) {
                                for (var i = 0; i < emailvar.length; i++) {
                                    emailtxt = emailtxt + "<div class='newemail' style='width:170px; color:#626262; overflow:hidden;'><font color='#000000'>" + press + "</font>" + emailvar[i] + "</div>"
                                }
                            } else {
                                emailbefor = press.split("@")[0];
                                emailafter = "@" + press.split("@")[1];
                                for (var i = 0; i < emailvar.length; i++) {
                                    var theemail = emailvar[i];
                                    if (theemail.indexOf(emailafter) == 0) {
                                        emailtxt = emailtxt + "<div class='newemail' style='width:170px; color:#6B6B6B; overflow:hidden;'><font color='#ff6d25'>" + emailbefor + "</font>" + emailvar[i] + "</div>"
                                    }
                                }
                            }
                            $("#myemail").html(emailmy + emailtxt);
                            if ($("#myemail").html()) {
                                $("#myemail").css("display", "block");
                                $(".newemail").css("width", $("#myemail").width());
                                can1press = true;
                            } else {
                                $("#myemail").css("display", "none");
                                can1press = false;
                            }
                            beforepress = press;
                        }
                        if (press == "" || press == null) {
                            $("#myemail").html("");
                            $("#myemail").css("display", "none");
                        }
                    })
                    $(document).click(function() { //�ı���ʧ��ʱɾ����
                        if (can1press) {
                            $("#myemail").remove();
                            can1press = false;
                            if ($("#txtcmail").focus()) {
                                can1press = false;
                            }
                        }
                    })
                    $(".newemail").live("mouseover", function() { //��꾭����ʾEmailʱ����������Email
                        $(".newemail").css("background", "#FFF");
                        $(this).css("background", "#FFCC99");
                        $(this).focus();
                        nowid = $(this).index();
                    }).live("click", function() { //�����Emailʱ���ı��������滻�ɸ���Email����ɾ����ʾ��
                        var newhtml = $(this).html();
                        newhtml = newhtml.replace(/<.*?>/g, "");
                        $("#txtcmail").val(newhtml);
                        $("#myemail").remove();
                    })
                    $(document).bind("keydown", function(e) {
                        if (can1press) {
                            switch (e.which) {
                                case 38:
                                    if (nowid > 0) {
                                        $(".newemail").css("background", "#FFF");
                                        $(".newemail").eq(nowid).prev().css("background", "#FFCC99").focus();
                                        nowid = nowid - 1;
                                    }
                                    if (!nowid) {
                                        nowid = 0;
                                        $(".newemail").css("background", "#FFF");
                                        $(".newemail").eq(nowid).css("background", "#FFCC99");
                                        $(".newemail").eq(nowid).focus();
                                    }
                                    break;

                                case 40:
                                    if (nowid < totalid) {
                                        $(".newemail").css("background", "#FFF");
                                        $(".newemail").eq(nowid).next().css("background", "#FFCC99").focus();
                                        nowid = nowid + 1;
                                    }
                                    if (!nowid) {
                                        nowid = 0;
                                        $(".newemail").css("background", "#FFF");
                                        $(".newemail").eq(nowid).css("background", "#FFCC99");
                                        $(".newemail").eq(nowid).focus();
                                    }
                                    break;

                                case 13:
                                    var newhtml = $(".newemail").eq(nowid).html();
                                    newhtml = newhtml.replace(/<.*?>/g, "");
                                    $("#txtcmail").val(newhtml);
                                    $("#myemail").remove();
                            }
                        }
                    })
                })
                //���email����
                function isEmail(str) {
                    if (str.indexOf("@") > 0) {
                        return true;
                    } else {
                        return false;
                    }
                }
</script>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ControlToValidate="txtcmail" ErrorMessage="�����ʽ����" Font-Bold="True" 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>            
              <span class="style3">
              <br /><br />
              <img src="imgs/info.png" height="18" width="18" />&nbsp;ֻ��������֤ͨ�������Բ���Ч��
              <br />
              </span>
                           <br /><div style="text-align: left">
              <asp:Label ID="Label2" runat="server" Text="�������ݣ���140�֣���"></asp:Label>   
            
            <br /><span class="style3">
              <br />
              <img src="imgs/info.png" height="18" width="18" />&nbsp;������ֱ����ϵ���ǣ��벻Ҫ�ڴ����룡
                           </span>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                  ErrorMessage="��������������Ҫ��" CssClass="aptips" ControlToValidate="txtccontent" 
                      ValidationExpression="^[\s\S][\d\D]{3,139}$"></asp:RegularExpressionValidator></div>             

              <p style="text-align: left">
            <asp:TextBox 
                    id="txtccontent" runat="server" Columns="125" Rows="8" 
                    BackColor="Silver" class="txt3" Height="121px" TextMode="MultiLine" 
                    Width="650px"></asp:TextBox>
              </p>
                       <br/> 
              <p style="text-align: center">

              <br />
            <asp:ImageButton ID="btnCommit" runat="server" ImageUrl="~/imgs/sendbtn.gif" OnClick="btnCommit_click"/>
            &nbsp; &nbsp;&nbsp;&nbsp;<asp:ImageButton ID="btnReset" runat="server" ImageUrl="~/imgs/clearbtn.gif" OnClick="btnReset_click"/></p></div></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF">
            <asp:DataList ID="dlmess" runat="server" BackColor="LightGoldenrodYellow" 
                  BorderColor="Tan" BorderWidth="1px" CellPadding="2"    ForeColor="Black" Font-Bold="False" 
                  Font-Italic="False" Font-Overline="False" Font-Strikeout="False" 
                  Font-Underline="False" HorizontalAlign="Left" Width="100%" 
                  AllowPaging="True" >
                  <FooterStyle BackColor="Tan" />
                  <AlternatingItemStyle BackColor="PaleGoldenrod" Wrap="True" />
                  <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                  <HeaderStyle BackColor="Tan" Font-Bold="True" />
                  <ItemTemplate>
                          <div class="style4">
                             <div style="padding:10px;"><div style="float:left;font-size: 11pt;"><asp:Label ID="floor"   runat="server" Text='<%#Eval("rowsid","{0}¥")%>' 
                              style="color: #FF7D23"></asp:Label><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
                         <div style="position:relative;">
                             <asp:Label 
                              ID="commentLabel" runat="server" Text='<%#Encryption.Decode(Eval("gname") )%>' 
                              style="color: #666666; font-size: 11pt;"  />                         
                          <br /><asp:Label ID="cposttimeLabel" runat="server" 
                            Text='<%# Eval("pposttime","{0:yyyy��M��d��}") %>' 
                              style="color: #999999; font-size: small;"  /><br />                               
                              <asp:Label ID="Label6" runat="server" Text='<%#Encryption.Decode(Eval("pcontent")) %>' ></asp:Label><br/><br/>
                              
                              
                              <asp:Table ID="Table1" runat="server"  Visible='<%# Eval("state") %>'><asp:TableRow>
                             <asp:TableCell> 
                                <div id="repanl" runat="server" style="background-color:#fff3e1; padding:10px; border-bottom:solid 1px Orange; border-right:solid 1px Orange; word-wrap:break-word; width:900px;">
                                  <asp:Label ID="Label7" runat="server" Text="�ظ���" style="color: #808080"></asp:Label><asp:Label ID="Label5" runat="server" Text='<%#Eval("reply") %>' ></asp:Label></div>
                          </div> 
     </asp:TableCell>
                             </asp:TableRow>
   
                             </asp:Table>
                             
                             
                             
                        
                  </ItemTemplate>
              </asp:DataList>
              
            </td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF">
               <asp:Label ID="labPageNumber" runat="server"  Width="100%"></asp:Label>
                </td>
        </tr>
        </table>
<br />
        &nbsp;</td>
  </tr>
  <tr>
     <td  class="footer" height="40" colspan="9" bgcolor="#A1A1A1"><p>&nbsp;</p>
            <p>&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Text=""></asp:Label></p>
         <p>&nbsp;&nbsp;<a href="adminlogin.aspx" class="foot">��¼��̨</a>&nbsp;&nbsp;<a href="http://jsunplace.tumblr.com/" class="foot">���߲���</a>&nbsp;&nbsp;<a href="about.html" class="foot">���ڱ�վ</a></p>
</td>
  </tr>
</table>
    </form>
</body>

</html>
