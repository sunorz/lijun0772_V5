<%@ Page Language="C#" AutoEventWireup="true" CodeFile="photomgr.aspx.cs" Inherits="photomgr" Debug="true"%>
<%@ Register assembly="System.Web.DynamicData, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.DynamicData" tagprefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html" />
<link rel="stylesheet" type="text/css" href="adminsty.css" />
<title>������</title>
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
    if (lang.substr(0, 3) == "zh-") {
        document.write("<style type=\"text/css\" media=\"screen\">center{display:none;}</style>");
    }
</script>
<form id="form1" runat="server">
  <table width="1038" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="9"  align="left" valign="middle" bgcolor="#ff7d23" class="style1">��������</td>
  </tr>
  <tr>
    <td colspan="9"  align="center" valign="middle" bgcolor="#585858">&nbsp;</td>
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
    <td height="15" colspan="17" align="center" bgcolor="#FFFFFF"><table width="90%" border="0" cellspacing="0" cellpadding="12">
          <tr>
            <td width="547" align="left"><h1>��̨����</h1>
             </td>
            <td align="right" nowrap="nowrap"><asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
            <td width="200" align="right">
                &nbsp;&nbsp;&nbsp;<asp:ImageButton ID="btnBack" runat="server" ImageUrl="~/imgs/back.gif" 
                    Height="32" Width="32" title="����" OnClick="btnBack_click"/>&nbsp;<asp:ImageButton ID="btnLogout" runat="server" ImageUrl="~/imgs/logout.gif" Height="32" Width="32" title="�ǳ�" OnClick="btnLogout_click"/></td>
          </tr>
          <tr>
            <td height="3" colspan="3" align="center">
                
                          <div id="divpopo" class="divcss" runat="server" align="center">
              
              <table width="100%" border="0" cellspacing="0" cellpadding="12">
                <tr>
                  <td align="right" valign="middle"><img src="imgs/photo.gif" alt="" width="32" height="32" /></td>
                  <td align="left"><strong>������
           
                    
                  </strong></td>
                </tr>
                <tr>
                  <td colspan="2" align="center" valign="top">
                      <br />
                      <asp:GridView ID="gvalb" runat="server" AutoGenerateColumns="False" 
                          BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                          CellPadding="2" DataKeyNames="alid"
                          ForeColor="Black" Width="700px" 
                          onrowdeleting="gvalb_RowDele" onrowediting="gvalb_RowEdt" 
                          onrowupdating="gvalb_RowUpd">
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
                              <ItemStyle HorizontalAlign="Center" Width="7%" />
                              </asp:BoundField>
                              <asp:TemplateField HeaderText="�����" InsertVisible="False" 
                                  SortExpression="alid" Visible="False">
                                  <ItemTemplate>
                                      <asp:Label ID="Label1" runat="server" Text='<%# Bind("alid") %>'></asp:Label>
                                  </ItemTemplate>
                                  <EditItemTemplate>
                                      <asp:Label ID="Label1" runat="server" Text='<%# Eval("alid") %>'></asp:Label>
                                  </EditItemTemplate>
                                  <ItemStyle HorizontalAlign="Center" Width="10%" />
                              </asp:TemplateField>
                              <asp:HyperLinkField DataNavigateUrlFields="alid" 
                                  DataNavigateUrlFormatString="photo.aspx?id={0}" Text="�����" 
                                  DataTextField="alname">
                              </asp:HyperLinkField>
                              <asp:TemplateField HeaderText="����">
                                  <ItemTemplate>
                                      <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("islock") %>' 
                                          Enabled="true" />
                                  </ItemTemplate>
                                  <EditItemTemplate>
                                      <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("islock") %>' />
                                  </EditItemTemplate>
                                  <ItemStyle HorizontalAlign="Center" Width="7%" />
                              </asp:TemplateField>
                              <asp:TemplateField ShowHeader="False">
                                  <EditItemTemplate>
                                      <asp:Button ID="Button1" runat="server" CausesValidation="True" 
                                          CommandName="Update" Text="����" ValidationGroup="EVC" />
                                  </EditItemTemplate>
                                  <ItemTemplate>
                                      <asp:Button ID="Button2" runat="server" CausesValidation="False" 
                                          CommandName="Edit" Text="�޸�" />
                                  </ItemTemplate>
                                  <ControlStyle BackColor="#FF7D23" BorderColor="#FF7D23" BorderStyle="Solid" 
                                      Font-Bold="True" Font-Names="����" Font-Size="Medium" ForeColor="White" />
                                  <ItemStyle HorizontalAlign="Center" />
                              </asp:TemplateField>
                              <asp:TemplateField ShowHeader="False">
                                  <ItemTemplate>
                                      <asp:Button ID="Button3" runat="server" CausesValidation="False" 
                                            CommandName="Delete" Text="ɾ��" 
                                            OnClientClick="javascript:return confirm('��ɾ���������ܰ�����Ƭ��\n��ȷ��ɾ���������');" />
                                  </ItemTemplate>
                                  <ControlStyle BackColor="#FF7D23" BorderColor="#FF7D23" BorderStyle="Solid" 
                                      Font-Bold="True" Font-Names="����" Font-Size="Medium" ForeColor="White" />
                                  <ItemStyle HorizontalAlign="Center" />
                              </asp:TemplateField>
                          </Columns>
                          <FooterStyle BackColor="Tan" />
                          <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                              HorizontalAlign="Center" />
                          <EmptyDataTemplate>
                              û����ᣡ
                          </EmptyDataTemplate>
                          <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                          <HeaderStyle BackColor="Tan" Font-Bold="True" />
                          <AlternatingRowStyle BackColor="PaleGoldenrod" />
                      </asp:GridView>
                      <br />
                      <div style="width:700px; text-align:left;"><input type="button" id="btn1" value="ȫѡ">&nbsp;&nbsp;<input type="button" id="btn2" value="ȡ��ȫѡ">&nbsp;&nbsp;<asp:Button 
                              ID="Button4" runat="server"  
                             
                              Text="ɾ��" onclick="deletemore" UseSubmitBehavior="False" />
                      </div><br />
                      <asp:TextBox ID="txtnew" runat="server" BackColor="Silver" CssClass="txt3"></asp:TextBox>
                      &nbsp;&nbsp;
                      <asp:Button ID="btnnew" runat="server" class="txt3" Text="���������" 
                    BackColor="#FF7D23" BorderStyle="Solid" Font-Bold="True" 
                    ForeColor="White" BorderColor="#FF7D23" OnClick="btnnew_Click" />
                      <br />
                      <br />
                      <br />
                      <div id="aptips" class="aptips" runat="server">ɾ�����ǰ���������ڵ�ͼƬ��</div>
                      <br />
                                          </td>
                </tr>
                </table>
            </div></td>
          </tr>
          

          <p>
            <br />

            

        </p>


            
  </tr>
 
  <tr>
    <td colspan="3" align="center" valign="middle" bgcolor="#FFFFFF" cellpadding="0">
        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;</td>
  </tr>
        </table></td>
  </tr>
  <tr>
  <td height="15" colspan="17" align="left" bgcolor="#A1A1A1" class="footer">
        <p>&nbsp;</p>
    <p>&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text=""></asp:Label></p></td>
        </tr>
        </table>
       
        </form>
</body>
</html>
