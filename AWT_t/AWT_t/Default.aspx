<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AWT_t.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Connection-Oriented Architecture Example</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="Email" HeaderText="Email" />
                    <asp:BoundField DataField="Mobile" HeaderText="Mobile" />
                </Columns>
            </asp:GridView>
            <asp:Button ID="btnLoadData" runat="server" Text="Load Data"
                OnClick="btnLoadData_Click" />
        </div>
    </form>
</body>
</html>

