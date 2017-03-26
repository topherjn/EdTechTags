<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TagsAdmin.aspx.cs" Inherits="TagsAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" GridLines="None" CellPadding="4" ForeColor="#333333" EmptyDataText="There are no data records to display." OnRowDataBound="GridView1_RowDataBound">
    <Columns>
      <asp:BoundField DataField="tagname" HeaderText="tagname" SortExpression="tagname" ItemStyle-Width="200px">
      </asp:BoundField>
      <asp:BoundField DataField="tagdesc" HeaderText="tagdesc" SortExpression="tagdesc"></asp:BoundField>
    </Columns>
  </asp:GridView>
  <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
    <Fields>
      <asp:BoundField DataField="tagname" HeaderText="Tag Name" SortExpression="tagname" />
      <asp:BoundField DataField="tagdesc" HeaderText="Tag Description" SortExpression="tagdesc" />
        <asp:CommandField ShowInsertButton="true" />
    </Fields>
  </asp:DetailsView>
  <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
      ConnectionString="<%$ ConnectionStrings:EdTechConnectionString2 %>" 
      SelectCommand="SELECT [tagname], [tagdesc] FROM [Tag]" OnDeleted="SqlDataSource1_Deleted" 
      InsertCommand="INSERT INTO [Tag] VALUES (@tagName,@tagDesc)">
    <DeleteParameters>
      <asp:Parameter Name="id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
      <asp:Parameter Name="tagName" Type="String" />
      <asp:Parameter Name="tagDesc" Type="String" />
    </InsertParameters>
    <UpdateParameters>
      <asp:Parameter Name="tagName" Type="String" />
      <asp:Parameter Name="tagDesc" Type="String" />
    </UpdateParameters>
  </asp:SqlDataSource>
  <script>
    $(function ()
    {
      $('.GridView tr:odd:not(.GridViewPagerStyle)').addClass('GridViewAlternatingRowStyle');
    });
  </script>    </div>
    </form>
</body>
</html>
