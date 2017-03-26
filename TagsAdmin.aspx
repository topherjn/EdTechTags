<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TagsAdmin.aspx.cs" Inherits="TagsAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="tagname" HeaderText="tagname" SortExpression="tagname" />
                <asp:BoundField DataField="tagdesc" HeaderText="tagdesc" SortExpression="tagdesc" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EdTechConnectionString %>" SelectCommand="SELECT [tagname], [tagdesc] FROM [Tag]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
