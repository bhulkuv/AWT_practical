<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="AWT_6.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProdsDBConnectionString %>" SelectCommand="sp_GetProducts" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server"

AutoGenerateColumns="True"

DataSourceID="SqlDataSource1">

</asp:GridView>
        </div>
        
    </form>
</body>
</html>
