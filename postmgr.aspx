<%@ Page Language="C#" AutoEventWireup="true" CodeFile="postmgr.aspx.cs" Inherits="postmgr"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" type="text/css" href="adminsty.css" />
<title>���¹���</title>
<script src="http://code.jquery.com/jquery-1.2.1.min.js" type="text/javascript"></script>
 <script type="text/javascript">
     $(function() {
         //ȫѡ 
         $("#btn1").click(function() {
             $("input[name$='CheckBox1']").attr("checked", "true");
         })
         //ȡ��ȫѡ 
         $("#btn2").click(function() {
             $("input[name$='CheckBox1']").removeAttr("checked");
         })
     });
    </script><script type="text/javascript" src="http://z.cnzz.net/o.php?sid=1253974593"></script></head>
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
    <td height="15" colspan="17" align="left" valign="middle" bgcolor="#ff7d23" class="style1">
        ��������</td></tr>
  <tr>
    <td height="15" colspan="17" bgcolor="#585858"></td>
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
  </tr>   <tr>
  <td height="15" colspan="17" align="center" bgcolor="#FFFFFF">
        <p><br />
        </p>
       
        <table width="90%" border="0" cellspacing="0" cellpadding="12">
          <tr>
            <td width="547" align="left"><h1>��̨����</h1>
             </td>
            <td align="right" nowrap="nowrap"><asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
            <td width="200" align="right">
                &nbsp;&nbsp;<asp:ImageButton ID="btnBack" runat="server" ImageUrl="~/imgs/back.gif" Height="32" Width="32" title="����" OnClick="btnBack_click"/>
                &nbsp;&nbsp;<asp:ImageButton ID="btnLogout" runat="server" ImageUrl="~/imgs/logout.gif" Height="32" Width="32" title="�ǳ�" OnClick="btnLogout_click"/></td>
          </tr>
          <tr>
            <td height="3" colspan="3" align="left">
                
                          </td>
          </tr>
          <tr>
            <td colspan="3" align="center" valign="middle"><div id="divchgpwd2" class="divcss" runat="server" align="center">
              <table width="100%" border="0" cellspacing="0" cellpadding="12">
                <tr>
                  <td align="right" valign="middle" width="40%"><img src="imgs/artcle.gif" width="32" height="32" /></td>
                  <td align="left" width="60%"><strong>���¹���</strong><asp:Button ID="btnPost" runat="server" 
                          class="txt3" Text="��������" 
                    BackColor="#FF7D23" BorderStyle="Solid" Font-Bold="True" 
                    ForeColor="White" BorderColor="#FF7D23" OnClick="btnPost_Click" /></td>
                </tr>
                <tr>
                  <td colspan="2" align="center" valign="top">
                      <asp:GridView ID="gvpost" runat="server" AutoGenerateColumns="False" 
                          BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                          CellPadding="2" DataKeyNames="artid"   ForeColor="Black" 
                          Width="100%" onrowdeleting="gvpost_RowDele" AllowPaging="True" Pagesize="12" 
                          DataSourceID="SqlDataSource1">
                          <PagerSettings FirstPageText="��һҳ&nbsp;" LastPageText="���һҳ" 
                              Mode="NextPreviousFirstLast" NextPageText="��һҳ&nbsp;" PreviousPageText="��һҳ&nbsp;" />
                          <Columns>
                              <asp:TemplateField>
                                  <ItemTemplate>
                                      <asp:CheckBox ID="CheckBox1" runat="server" />
                                  </ItemTemplate>
                                  <EditItemTemplate>
                                      <asp:CheckBox ID="CheckBox1" runat="server" />
                                  </EditItemTemplate>
                                  <ItemStyle HorizontalAlign="Center" />
                              </asp:TemplateField>
                              <asp:BoundField DataField="rowsid" HeaderText="���" ReadOnly="True" >
                              <ItemStyle HorizontalAlign="Center" Width="10%" />
                              </asp:BoundField>
                              <asp:BoundField DataField="artid" HeaderText="���" InsertVisible="False" 
                                  ReadOnly="True" SortExpression="artid" Visible="False" />
                              <asp:TemplateField HeaderText="����">
                                  <ItemTemplate>
                                      <asp:HyperLink ID="HyperLink1" runat="server" 
                                          NavigateUrl='<%# Eval("artid", "detail.aspx?id={0}") %>' Target="_blank" 
                                          Text='<%#SubStr(Eval("artitle"),10) %>' ToolTip='<%# Eval("artitle")%>'></asp:HyperLink>
                                  </ItemTemplate>
                              </asp:TemplateField>
                              <asp:TemplateField HeaderText="����" SortExpression="artmkr">
                                  <ItemTemplate>
                                      <asp:Label ID="Label1" runat="server" Text='<%# SubStr(Eval("artmkr"),8) %>' ToolTip='<%#Eval("artmkr") %>' ></asp:Label>
                                  </ItemTemplate>
                                  <ItemStyle HorizontalAlign="Center" />
                              </asp:TemplateField>
                              <asp:BoundField DataField="arttime" DataFormatString="{0:yyyy��M��d��}" 
                                  HeaderText="����ʱ��" SortExpression="arttime" ReadOnly="True" >
                              <ItemStyle HorizontalAlign="Center" />
                              </asp:BoundField>
                              <asp:CheckBoxField DataField="comon" HeaderText="�ر�����" >
                              <ItemStyle HorizontalAlign="Center" />
                              </asp:CheckBoxField>
                              <asp:TemplateField ShowHeader="False">
                                  <ItemTemplate>
                                      <asp:Button ID="Button2" runat="server" CausesValidation="False" 
                                    CommandName="Edit" Text="�޸�" ShowCancelButton="False"  />
                                  </ItemTemplate>
                                  <EditItemTemplate>
                                  <asp:Button ID="Button3" runat="server" CausesValidation="True" 
                                    CommandName="Update" Text="����"/>
                                  </EditItemTemplate>
                                  <ControlStyle BackColor="#FF7D23" BorderColor="#FF7D23" BorderStyle="Solid" 
                                Font-Bold="True" Font-Names="����" Font-Size="Medium" ForeColor="White" />
                                  <ItemStyle HorizontalAlign="Center" />
                              </asp:TemplateField>
                              <asp:TemplateField ShowHeader="False">
                                  <ItemTemplate>
                                      <asp:Button ID="Button1" runat="server" CausesValidation="False" 
                                          CommandName="Delete" Text="ɾ��" OnClientClick="javascript:return confirm('��ȷ��ɾ����������');" />
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
                              û���κ����£�
                          </EmptyDataTemplate>
                          <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                          <HeaderStyle BackColor="Tan" Font-Bold="True" />
                          <AlternatingRowStyle BackColor="PaleGoldenrod" />
                      </asp:GridView><br/>
                      <div style="width:700px; text-align:left;"><input type="button" id="btn1" value="ȫѡ">&nbsp;&nbsp;<input type="button" id="btn2" value="ȡ��ȫѡ">&nbsp;&nbsp;<asp:Button 
                              ID="Button4" runat="server"  
                             
                              Text="ɾ��" onclick="deletemore" UseSubmitBehavior="False" />
                      </div>
                    </td>
                </tr>
                <tr>
                  <td colspan="2" valign="top">
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server"  ConnectionString="<%$ ConnectionStrings:lijunConnectionString %>"
                    SelectCommand="SELECT *,ROW_NUMBER()OVER (order by artid desc) AS rowsid FROM [Article]" 
                          DeleteCommand="DELETE FROM [Article] WHERE [artid] = @artid" 
                          ProviderName="System.Data.SqlClient" 
                          UpdateCommand="UPDATE [Article] SET [comon]=@comon WHERE [artid] = @artid">
                          <DeleteParameters>
                              <asp:Parameter Name="artid" Type="Int32" />
                          </DeleteParameters>
                          <UpdateParameters>
                              <asp:Parameter Name="artitle" Type="String" />
                              <asp:Parameter Name="artmkr" Type="String" />
                              <asp:Parameter Name="artcnt" Type="String" />
                              <asp:Parameter Name="arttime" Type="DateTime" />
                              <asp:Parameter Name="good" Type="Int32" />
                              <asp:Parameter Name="artid" Type="Int32" />
                          </UpdateParameters>
                          <InsertParameters>
                              <asp:Parameter Name="artitle" Type="String" />
                              <asp:Parameter Name="artmkr" Type="String" />
                              <asp:Parameter Name="artcnt" Type="String" />
                              <asp:Parameter Name="arttime" Type="DateTime" />
                              <asp:Parameter Name="good" Type="Int32" />
                          </InsertParameters>
                      </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                  <td colspan="2">&nbsp;</td>
                </tr>
              </table>
            </div></td>
          </tr>
          </table>

          <p>
            <br />
            <br />
            

        </p>
 <br />

            
  </tr>
  
  <tr>
    <td colspan="9" align="center" valign="middle" bgcolor="#FFFFFF" cellpadding="0">
        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<p><br />
             <br />
            <br />
             <br /></p></td>
  </tr>
  <tr>
    <td height="40" colspan="9" bgcolor="#A1A1A1"  class="footer"><p>&nbsp;</p>
        <p> &nbsp; &nbsp;<asp:Label ID="Label3" runat="server" Text=""></asp:Label></p></td></table>          
    </form>
</body>
</html>
