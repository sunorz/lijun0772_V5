<%@ Page Language="C#" AutoEventWireup="true" CodeFile="photo.aspx.cs" Inherits="photo"  Debug="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html" />
<link rel="stylesheet" type="text/css" href="adminsty.css" />
<link href="lanrenzhijia.css" type="text/css" rel="stylesheet" />
<title>��Ƭ����</title>
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
    </script>
<script type="text/javascript" src="http://z.cnzz.net/o.php?sid=1253974593"></script></head>
<body>
<script language="JavaScript" type="text/javascript">
    var lang = navigator.language || navigator.userLanguage;
    if (lang.substr(0, 3) == "zh-") {
        document.write("<style type=\"text/css\" media=\"screen\">center{display:none;}</style>");
    }
</script>
<form id="form1" runat="server" autocomplete="off">
  <table width="1038" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="15" colspan="9" bgcolor="#585858"></td></tr>
  <tr>
  <td  align="left" valign="middle" bgcolor="#ff7d23" class="style1">��������</td>
   
  </tr>  <tr>
  <td height="15" colspan="9" align="center" bgcolor="#FFFFFF">
        <p><br />
        </p>
       
        <table width="90%" border="0" cellspacing="0" cellpadding="12">
          <tr>
            <td width="547" align="left"><h1>��̨����</h1>
             </td>
            <td align="right" nowrap="nowrap"><asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
            <td width="200" align="right">
                &nbsp;<asp:ImageButton ID="btnBack" runat="server" ImageUrl="~/imgs/back.gif" Height="32" Width="32" title="����" OnClick="btnBack_click"/>&nbsp;<asp:ImageButton ID="btnBaphoto" runat="server" ImageUrl="~/imgs/photo.gif"   Height="32" Width="32" title="������" OnClick="btnBaphoto_click"/>&nbsp;<asp:ImageButton ID="btnLogout" runat="server" ImageUrl="~/imgs/logout.gif" Height="32" Width="32" title="�ǳ�" OnClick="btnLogout_click"/></td>
          </tr>
          <tr>
            <td height="3" colspan="3" align="left">&nbsp;
                
                          </td>
          </tr>
          <tr>
            <td colspan="3" align="center" valign="middle" width="500">
              <table border="0" cellspacing="0" cellpadding="12">
                <tr>
                  <td align="right">
                      <asp:Image ID="Image1" runat="server" ImageUrl="~/imgs/photod.gif" />
                    </td>
                  <td align="left"><strong>��Ƭ����</strong></td></tr>
                <tr>
                  <td colspan="2" style="text-align: center"><div id="divpic" class="divcss2" runat="server" align="center">
                    <table width="100%" border="0">
                      <tr>
                        <td><br /> <br /> 
                    �ϴ�����<asp:DropDownList ID="ddlclass" runat="server" 
                          BackColor="Silver" CssClass="txt3" 
                          DataTextField="alname" DataValueField="alid">
                      </asp:DropDownList>                     
                    <br />
                    <br />
                    ��Ƭ���ƣ�<asp:TextBox ID="tbname" runat="server" BackColor="Silver" CssClass="txt3" 
                          MaxLength="20">δ����</asp:TextBox>
                    <br />
                    <br />
                    <br />
                    ���ߣ�<asp:TextBox ID="tbmkr" runat="server" BackColor="Silver" CssClass="txt3">��������</asp:TextBox>
                    <br />
                    <br />
                    <br /></td>
                        </tr>
                     <tr>
                        <td>
                          <asp:FileUpload ID="fuimg" runat="server" BackColor="Silver" 
                          CssClass="txt3" Width="263px" />
                          <br />
                          <br />                                               
                          �ϴ�ͼƬ���ܴ���200k������Ϊ������ͼƬ�ļ���<div id="aptips" runat="server" class="aptips"></div>
                          <br />
                          <asp:Button ID="btnnew" runat="server" BackColor="#FF7D23" 
                              BorderColor="#FF7D23" BorderStyle="Solid" class="txt3" Font-Bold="True" 
                              ForeColor="White" OnClick="btnnew_Click" Text="�ϴ�" />
                          <br /> <br /></td>
                        </tr>
                         <tr>
                        <td>
                            ����ͼƬ��<asp:TextBox ID="tblink" runat="server" Width="29%" BackColor="White" 
                                CssClass="txt3" BorderColor="#F78B43" BorderStyle="Solid" 
                                BorderWidth="1px"></asp:TextBox>
                             <asp:Button ID="btnlink"  runat="server" BackColor="#FF7D23" 
                              BorderColor="#FF7D23" BorderStyle="Solid" class="txt3" Font-Bold="True" 
                              ForeColor="White" OnClick="btnlink_Click" Text="����" />
                             </td>
                      </tr>
                    </table>
                  </div></td>
                </tr>
                </table>
</td>
          </tr>
          <tr>
            <td colspan="3" align="center" valign="middle">
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>��<br />
&nbsp;<asp:GridView ID="gvphoto" runat="server" AllowPaging="True"  Pagesize="15"
                    AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
                    BorderWidth="1px" CellPadding="2" DataKeyNames="poid,Expr1" 
                    ForeColor="Black" 
                    Width="1000px" 
                    style="margin-right: 0px" DataSourceID="SqlDataSource1" 
                    onrowdeleting="gvphoto_RowDele" HorizontalAlign="Center">
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
                        <asp:BoundField DataField="rowsid" HeaderText="���" ReadOnly="True">
                        <ControlStyle Width="5%" />
                        <FooterStyle Width="5%" />
                        <HeaderStyle Width="5%" />
                        <ItemStyle HorizontalAlign="Center" Width="5%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="poid" HeaderText="���" InsertVisible="False" 
                            ReadOnly="True" SortExpression="poid" Visible="False" />
                        <asp:TemplateField HeaderText="����ͼ">
                            <ItemTemplate>
                                <asp:HyperLink ID="openimg" runat="server" 
                                    NavigateUrl='<%# Eval("pourl") %>' 
                                    ImageUrl='<%# Eval("psmurl") %>' ToolTip='<%#Eval("poname") %>'><%#Eval("poname") %></asp:HyperLink>
                            </ItemTemplate>
                            <FooterStyle Width="10%" />
                            <HeaderStyle Width="10%" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"/>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="ͼƬ��" SortExpression="poname">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# SubStr(Eval("poname"),10) %>' ToolTip='<%#Eval("poname") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="txt3" Width="100%" 
                                    Text='<%# Bind("poname") %>' ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="TextBox1" ErrorMessage="����" Font-Bold="True"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ControlStyle Width="80%" />
                            <FooterStyle Width="20%" />
                            <HeaderStyle Width="20%" />
                            <ItemStyle HorizontalAlign="Center" Width="20%" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="����" SortExpression="potor">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("potor") %>' ToolTip='<%#Eval("potor") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="txt3" 
                                    Text='<%# Bind("potor") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ErrorMessage="����" Font-Bold="True" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                             <ControlStyle Width="80%" />
                            <FooterStyle Width="20%" />
                            <HeaderStyle Width="20%" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="potime" HeaderText="�ϴ�ʱ��" SortExpression="potime" 
                            DataFormatString="{0:yyyy��M��d��}" ReadOnly="True" >
                            <ControlStyle Width="15%" />
                            <FooterStyle Width="15%" />
                            <HeaderStyle Width="15%" />
                        <ItemStyle HorizontalAlign="Center" Width="15%"  />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="�������" SortExpression="alname">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# SubStr(Eval("alname"),6) %>' ToolTip='<%#Eval("alname") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" 
                                    SelectedValue='<%# Bind("alid") %>' CssClass="txt3" 
                                    DataSourceID="SqlDataSource2" DataTextField="alname" DataValueField="alid">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server"  
                                    ConnectionString="<%$ ConnectionStrings:lijunConnectionString %>" 
                                    ProviderName="System.Data.SqlClient" 
                                    SelectCommand="SELECT [alid], [alname] FROM [Album]"></asp:SqlDataSource>
                            </EditItemTemplate>
                            <ItemStyle HorizontalAlign="Center" Width="15%" />
                        </asp:TemplateField>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" CausesValidation="False" 
                                    CommandName="Edit" Text="�޸�" ShowCancelButton="False"  />
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:Button ID="Button1" runat="server" CausesValidation="True" 
                                    CommandName="Update" Text="����"/>
                            </EditItemTemplate>
                            <ControlStyle BackColor="#FF7D23" BorderColor="#FF7D23" BorderStyle="Solid" 
                                Font-Bold="True" Font-Names="����" Font-Size="Medium" ForeColor="White" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:Button ID="Button3" runat="server" CausesValidation="False" 
                                    CommandName="Delete" Text="ɾ��" OnClientClick="javascript:return confirm('��ȷ��ɾ������Ƭ��');"/>
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
                        �������û��ͼƬ��
                    </EmptyDataTemplate>
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                </asp:GridView>
                <br/> <script src="js/jquery.min123.js"></script>
<script src="js/jquery.imgbox.pack.js"></script>
<script language="javascript" type="text/javascript">
    $(function() {
        $("a[id$='openimg']").imgbox({
            'speedIn': 0,
            'speedOut': 0,
            'alignment': 'center',
            'overlayShow': true,
            'allowMultiple': false
        });

    });
</script>
                      <div style="width:1000px; text-align:left;"><input type="button" id="btn1" value="ȫѡ">&nbsp;&nbsp;<input type="button" id="btn2" value="ȡ��ȫѡ">&nbsp;&nbsp;<asp:Button 
                              ID="Button4" runat="server"  
                             
                              Text="ɾ��" onclick="deletemore" UseSubmitBehavior="False" /></div>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                          ConnectionString="<%$ ConnectionStrings:lijunConnectionString %>"
                          DeleteCommand="DELETE FROM [Photo] WHERE [poid] = @poid" 
                          ProviderName="System.Data.SqlClient" 
                          SelectCommand="SELECT ROW_NUMBER()OVER (order by poid desc) AS rowsid,Photo.poid, Photo.poname, Photo.potor, Photo.pourl, Photo.psmurl, Photo.potime, Photo.alid, Album.alid AS Expr1, Album.alname, Album.islock FROM Photo INNER JOIN Album ON Photo.alid = Album.alid WHERE (Photo.alid = @alid) ORDER BY Photo.poid DESC" 
                          
                    UpdateCommand="UPDATE [Photo] SET [poname] = @poname, [potor] = @potor,[alid]=@alid WHERE [poid] = @poid">
                          <SelectParameters>
                              <asp:QueryStringParameter Name="alid" QueryStringField="id" Type="Int32" />
                          </SelectParameters>
                          <DeleteParameters>
                              <asp:Parameter Name="poid" Type="Int32" />
                          </DeleteParameters>
                          <UpdateParameters>
                              <asp:Parameter Name="poname" Type="String" />
                              <asp:Parameter Name="potor" Type="String" />
                              <asp:Parameter Name="alid" Type="Int32" />
                              <asp:Parameter Name="poid" Type="Int32" />
                          </UpdateParameters>                          
                      </asp:SqlDataSource>                
              </td>
          </tr>
          </table>

          <p>
            <br />
            <br />
            

        </p>
 <br />

            
  </tr>

  <tr>
    <td align="center" valign="middle" bgcolor="#FFFFFF" cellpadding="0">
        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<p><br />
             <br />
            <br />
             <br /></p></td>
  </tr>
  <tr>
    <td height="40" bgcolor="#A1A1A1"  class="footer"><p>&nbsp;</p>
                  <p> &nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></p></td></tr></table>          
    </form>
</body>
</html>
