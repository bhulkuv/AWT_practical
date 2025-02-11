<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="AWT_d.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Disconnected Architecture Example</title>
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
            <br />
            <asp:Button ID="btnLoadData" runat="server" Text="Load Data"
                OnClick="btnLoadData_Click" />
            <asp:Button ID="btnUpdateData" runat="server" Text="Update Data"
                OnClick="btnUpdateData_Click" />
        </div>
    </form>
</body>
</html>
