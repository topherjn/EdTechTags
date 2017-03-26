<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DisplayContent.aspx.cs" Inherits="DisplayContent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both">
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <ItemStyle BackColor="White" ForeColor="#003399" />
            <ItemTemplate>
                <asp:Label ID="tagnameLabel" runat="server" Text='<%# Eval("tagname") %>' />
                <br />
<br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EdTechConnectionString2 %>" SelectCommand="SELECT [tagname] FROM [Tag]"></asp:SqlDataSource>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                content:
                <asp:Label ID="contentLabel" runat="server" Text='<%# Eval("content") %>' />
                <br />
                contributor:
                <asp:Label ID="contributorLabel" runat="server" Text='<%# Eval("contributor") %>' />
                <br />
                description:
                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                <br />
                dateSubmitted:
                <asp:Label ID="dateSubmittedLabel" runat="server" Text='<%# Eval("dateSubmitted") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EdTechConnectionString2 %>" SelectCommand="SELECT [content], [contributor], [description], [dateSubmitted] FROM [Contribution]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
