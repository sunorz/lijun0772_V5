<%@ Page Language="C#" AutoEventWireup="true" CodeFile="detail.aspx.cs" Inherits="detail" Debug="true"%>
<%@ Register src="gotop.ascx" tagname="gotop" tagprefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" type="text/css" href="style.css" />
<title>��������-ҵ������</title>
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
	background-image: url(imgs/class/bg5.jpg);
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
        .auto-style1 {
            background-color: #C0C0C0;
        }
            #leave
            {
                text-align: center;
            }
            .style2
            {
                font-size: small; color:gray;
            }
            #reply
            { 
          
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
.pager a:hover { border:1px solid #F59223; background-color:#F59223; color:White; margin: 0 5px; padding: 1px 6px; }
            .style5
            {
                background-color: #FFFFEC;
            }
            .tableo{border-collapse:collapse;table-layout:fixed;word-wrap:break-word;}
        </style>

        
<script type="text/javascript" src="http://z.cnzz.net/o.php?sid=1253974593"></script></head>
<body>
<div id="apDiv2" class="toplnk"><uc1:gotop ID="gotop1" runat="server" /></div>
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
    <td height="20"></td>
  </tr>  
  <tr>
  <td height="20"><table align="center" cellspacing="0" width="1035px">
      <tr>
     <td align="center" valign="middle" class="topbar"><a href="Default.aspx"  class="ht">��վ��ҳ</a></td>
    <td align="center" valign="middle" class="topbar"><a href="show.aspx"  class="ht">���չʾ</a></td>
    <td align="center" valign="middle" class="topbar"><a href="error.aspx"  class="ht">��������</a></td>
    <td align="center" valign="middle" class="topbar"><a href="fix.aspx"  class="ht">��������</a></td>
    <td  align="center" valign="middle" class="ht" bgcolor="#E96800">ҵ������</td>
    <td  align="center" valign="middle" class="topbar"><a href="shop.aspx" class="ht">�������</a></td>
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
        <td colspan="9" align="middle" valign="middle"><a href="bbs.aspx" title="��̳��ҳ"><img src="imgs/class/img5.gif" width="200" height="194" border="0" data-tag="hdimg" /></a>          <div id="title" runat="server">
            ҵ������</div></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#FFFFFF" style="background-color: #FFFFEC"><asp:ImageButton ID="btnBack" runat="server" ImageUrl="~/imgs/back.gif" Height="32" Width="32" title="����" OnClick="btnBack_click"/></td>
          </tr>
          <tr>
            <td colspan="2" align="center" valign="top" bgcolor="#FFFFEC"><div id="banner" runat="server" style="font-size: 0.9em">
                ��һƪ��<asp:HyperLink 
                    ID="hlpre" runat="server" Enabled="False">û����һƪ�ˡ�</asp:HyperLink>
                &nbsp;&nbsp;��һƪ��<asp:HyperLink ID="hlnext" runat="server" Enabled="False">û����һƪ�ˡ�</asp:HyperLink>
                </div>
                <span class="contents"><asp:Label ID="Label1" runat="server" Text="���²����ڻ��ѱ�ɾ����" Visible="False"></asp:Label><span class="contents"> <br />
                <asp:Label ID="lbif" runat="server" Text=""></asp:Label>
                <asp:FormView ID="fvtxt" runat="server" DataKeyNames="artid" 
                      Width="100%" style="text-align: left" >
                    <EditItemTemplate>                       
                    </EditItemTemplate>
                    <InsertItemTemplate>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        &nbsp;<p style="text-align:right"><asp:Label ID="artidLabel" runat="server" Text='<%# Eval("artid") %>' 
                            Visible="False" style="text-align: right" />
                            </p>
                        <br />
                        <p align="center"><asp:Label ID="artitleLabel" runat="server" Text='<%# Eval("artitle") %>' 
                            Font-Bold="True" style="font-size: large" /></p>
                        <br />
                        <br />
                        <span class="bbsdel" style="color: #FF9424;font-size:small">����:</span>
                        <asp:Label ID="artmkrLabel" runat="server" Text='<%# Eval("artmkr") %>' 
                            Font-Size="Small" style="color: #FF7D23" />
                        &nbsp;&nbsp; <span class="bbsdel" style="color: #FF7D24; font-size:small">����ʱ�䣺</span>
                        <asp:Label ID="arttimeLabel" runat="server" Font-Size="Small" 
                            style="color: #FF7D23" Text='<%# Eval("arttime","{0:yyyy��M��d��}") %>'/>
                        <br />
                        <span class="bbsdel"><asp:Label ID="artcntLabel" runat="server" Text='<%#OutputByLine(Eval("artcnt"))%>' /></span>
                        <br />
                        <br />
                        <br />
                        &nbsp;<br />
                    </ItemTemplate>
                </asp:FormView>
<script>

        var aa = document.getElementsByTagName('img');
        for (var i = 0; i < aa.length; i++) {
            if (aa[i].getAttribute("data-tag") == null)
                aa[i].setAttribute("data-tag", "img_1");
        }



</script>
               <asp:Label ID="labPageNumber" runat="server"  Width=100% CssClass="txt3"
                ></asp:Label>
                </td>
          </tr>
          <tr>
            <td colspan="2" align="center" class="style5">
<p id="share" runat ="server"><div class="bdsharebuttonbox" data-tag="ppt"><a href="#" class="bds_qzone" data-cmd="qzone" title="����QQ�ռ�"></a><a href="#" class="bds_tsina" data-cmd="tsina" title="��������΢��"></a><a href="#" class="bds_tqq" data-cmd="tqq" title="������Ѷ΢��"></a><a href="#" class="bds_weixin" data-cmd="weixin" title="����΢��"></a><a href="#" class="bds_print" data-cmd="print" title="������ӡ"></a><a href="#" class="bds_copy" data-cmd="copy" title="����������ַ"></a></div><asp:ImageButton ID="btngood" runat="server" ImageUrl="~/imgs/good.jpg" 
                            OnClick="btngood_Click" title="��һ�£�" />
                        <asp:Label ID="Label4" runat="server" ForeColor="#FF7D23" Text=""></asp:Label></p></td>
          </tr>
          <tr id="tr1" runat="server">
              
            <td colspan="2" align="center" class="style5" style="text-align:right;"><div style="width:95%;">
                <asp:HyperLink ID="HyperLink1" runat="server">�޸�</asp:HyperLink>&nbsp;<asp:HyperLink ID="HyperLink2" runat="server">ɾ��</asp:HyperLink></div></td>
          </tr>
          <tr  id="tr2" runat="server" >
            <td colspan="2" align="left" class="style5"><div id="reply" runat="server">
                   
                    �ǳƣ� <asp:TextBox ID="txtname" runat="server" BackColor="White" CssClass="txt3" 
                           MaxLength="20" BorderColor="#F78B43" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtname" CssClass="aptips" 
                    ErrorMessage="�ǳƲ����Ϲ涨��" 
                    ValidationExpression="^[\u4E00-\u9FA5A\a-zA-Z][\u4E00-\u9FA5A-Za-z0-9]{3,14}$" Display="Dynamic"></asp:RegularExpressionValidator>
                       <br />
                         <span class="style2"><img src="imgs/info.png" width="18" height="18">&nbsp;�ǳ��벻Ҫ�����ֿ�ͷ��������������ţ��ҳ��ȿ�����4��15���ַ���</span>
                       <br />
                
                <br />                
                   ���䣺       <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager> 
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate> 
                                <asp:TextBox ID="txtmail" runat="server" 
                           BackColor="White" CssClass="txt3" 
                    MaxLength="50" BorderColor="#F78B43" BorderStyle="Solid" BorderWidth="1px" 
                        Width="371px"></asp:TextBox>&nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="��֤�ҵ�����" />
                                    <asp:Label ID="lbmail" runat="server" Text=""></asp:Label>         
                   
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtmail" CssClass="aptips" ErrorMessage="�����ʽ����ȷ��" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                       
                    </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click" />
                        </Triggers>
                    </asp:UpdatePanel>
                <br /><br />
<span class="style2"><img src="imgs/info.png" alt="" width="18" height="18"/>&nbsp;<b>������֤����������ۣ�</b>ֻ��������֤ͨ�������۲Ż���ʾ��</span><br/>
                <br class="txt3" />
                   ����ظ���
                  <asp:Label ID="lbr1" runat="server" Text="���ڻظ�" Visible="False"></asp:Label>
                       <asp:Label ID="lbre" runat="server" style="color: #FF7D23" Text=""></asp:Label>
                       <asp:Label ID="lbr2" runat="server" Text="������" 
                       Visible="False"></asp:Label>                      
                  
                   
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                       ControlToValidate="txtcomment" CssClass="aptips" ErrorMessage="����������Ҫ��" 
                       ValidationExpression="^[\s\S][\d\D]{3,139}$" Display="Dynamic"></asp:RegularExpressionValidator>
                        <br />
                          <span class="style2"><img src="imgs/info.png" width="18" height="18">&nbsp;�벻Ҫ�������������˽���˺�����ȣ������ݣ�лл��</span><br/>
  <asp:TextBox ID="txtcomment" runat="server" BackColor="White" CssClass="txt3" 
                    Height="150px" TextMode="MultiLine" Width="603px" MaxLength="3" 
                           BorderColor="#F78B43" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                <br />
                <br />
                 
                   <asp:Button ID="btnPost" runat="server" BackColor="#FF7D23" 
                    BorderColor="#FF7D23" BorderStyle="Solid" class="txt3" Font-Bold="True" 
                    ForeColor="White" OnClick="btnPost_Click" Text="�ظ�" Width="60px" />
                   &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnRest" runat="server" BackColor="#FF7D23" 
                    BorderColor="#FF7D23" BorderStyle="Solid" class="txt3" Font-Bold="True" 
                    ForeColor="White" OnClick="btnReset_Click" Text="ȡ��" Width="60px" 
                       UseSubmitBehavior="False" />
                
                                    
                </div><br /><br /><div id="commpo" runat="server">                 
                <asp:Label ID="Label5" runat="server" Text="�����б�"></asp:Label>
                <br />
                <br />
                <div id="comdiv" runat="server" style="overflow:scroll; height:600px; overflow-x:hidden;">
                    <asp:DataList ID="dlcom" runat="server" BackColor="LightGoldenrodYellow" 
                    BorderColor="Tan" BorderWidth="1px" CellPadding="20" 
                    ForeColor="Black" Width="100%" GridLines="Both" style="font-size: medium" 
                        CellSpacing="20">
                    <FooterStyle BackColor="Tan" />
                    <AlternatingItemStyle BackColor="PaleGoldenrod" />
                    <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <ItemTemplate>
                          <div style="padding:10px;">
                              <div style="float:left;font-size: 11pt;"><asp:Label ID="floor"   runat="server" Text='<%#Eval("fid","{0}¥")%>' 
                              style="color: #FF7D23"></asp:Label><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
                         <div style="position:relative;">
                             <asp:Label 
                              ID="commentLabel" runat="server" Text='<%#Encryption.Decode(Eval("gname") )%>' 
                              style="color: #666666; font-size: 11pt;"  />
                          <asp:Image ID="Image1" runat="server"  ImageUrl="imgs/v.png" Visible='<%#Eval("ismgr")%>' ToolTip="վ�����Ա"/>
                          <br /><asp:Label ID="cposttimeLabel" runat="server" 
                            Text='<%# Eval("cposttime","{0:yyyy��M��d��}") %>' 
                              style="color: #999999; font-size: small;"  /><br />                            
                             <asp:Label ID="Label7" runat="server" Text="�ظ�" 
                                 Visible='<%# Eval("state") %>'></asp:Label><samp style="font-family:Arial; color:#FF7D23;"><asp:Label ID="Label2" runat="server"
                                     Text="@"  Visible='<%# Eval("state") %>' ></asp:Label><asp:Label ID="Label8" runat="server"
                                         Text='<%#Encryption.Decode(Eval("rname")) %>' Visible='<%# Eval("state") %>'></asp:Label></samp><asp:Label
                                             ID="Label9" runat="server" Text=":" Visible='<%# Eval("state") %>'></asp:Label>
                              <asp:Label ID="Label6" runat="server" Text='<%#Encryption.Decode(Eval("comment")) %>' ></asp:Label><br /><br />
                       
                             <div style="width:100%;"><asp:Panel ID="plbtn" runat="server" Visible='<%# ((bool)Eval("comon") ? false : true)%>' Width="100%">
                           
                              <asp:Button ID="btnR" runat="server" BackColor="#FF7D23" 
                    BorderColor="#FF7D23" BorderStyle="Solid" class="txt3" Font-Bold="True" 
                    ForeColor="White" Text="�ظ�" Width="60px" onclick="btnR_Click" 
                                  CommandArgument='<%# Eval("comid") %>' Visible='<%# Eval("cflag") %>'  />
                              &nbsp;&nbsp; </asp:Panel> <br/> </div> 
                             <div>
                             <asp:Table ID="Table1" runat="server" BorderColor="#FF9900" BorderStyle="Solid" 
                                 BorderWidth="1px" BackColor="#FFFFCC" CellPadding="20" CellSpacing="20" 
                                 HorizontalAlign="Left" Visible='<%# Eval("state") %>' Width="90%" CssClass="tableo"><asp:TableRow>
                             <asp:TableCell> 
                                 <samp style="font-family:Arial; color:#FF7D23;"><asp:Label ID="Label11" runat="server"
                                     Text="@"  Visible='<%# Eval("state") %>' ></asp:Label><asp:Label ID="Label12" runat="server"
                                         Text='<%#Encryption.Decode(Eval("rname")) %>' Visible='<%# Eval("state") %>'></asp:Label></samp><asp:Label
                                             ID="Label13" runat="server" Text=":" Visible='<%# Eval("state") %>'></asp:Label>
                                 <asp:Label ID="Label10" runat="server" Text='<%#Encryption.Decode(Eval("rcomment")) %>' Visible='<%# Eval("state") %>'></asp:Label>
                             </asp:TableCell>
     
                             </asp:TableRow>
   
                             </asp:Table></div>
                            
                            
                              </div>
                         
                                              
                                     
                    </ItemTemplate>
                </asp:DataList>
                <br />
                <br />
                            </div></div></td>
          </tr>
          <tr>
            <td colspan="2" align="left">
              </td>
          </tr>
      </table></td>
  </tr>
  <tr>
     <td  class="footer" height="40" colspan="9" bgcolor="#A1A1A1"><p>&nbsp;</p>
         <p>&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></p>
             <p>&nbsp;&nbsp;<a href="adminlogin.aspx" class="foot">��¼��̨</a>&nbsp;&nbsp;<a href="http://jsunplace.tumblr.com/" class="foot">���߲���</a>&nbsp;&nbsp;<a href="about.html" class="foot">���ڱ�վ</a></p>
</td>
  </tr>
</table>

    </form>
    <script src="js/bdshare.js" charset="utf-8"></script>  
</body>
</html>
