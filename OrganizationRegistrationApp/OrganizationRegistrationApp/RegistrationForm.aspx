<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegistrationForm.aspx.cs" Inherits="RegistrationForm" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Registration Form</title>
</head>
<body>
<form id="form1" runat="server">
<div>
<h2>Registration Form</h2>
<table>
<tr>
<td>User Name:</td>
<td><asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td>Password:</td>
<td><asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
</tr>
<tr>
<td>Email:</td>
<td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td>City:</td>
<td>
<asp:DropDownList ID="ddlCity" runat="server">
<asp:ListItem Text="Select City" Value=""></asp:ListItem>
<asp:ListItem Text="Mumbai" Value="Mumbai"></asp:ListItem>
<asp:ListItem Text="Delhi" Value="Delhi"></asp:ListItem>
<asp:ListItem Text="Bangalore" Value="Bangalore"></asp:ListItem>
</asp:DropDownList>
</td>
</tr>
<tr>
<td>Gender:</td>
<td>
<asp:RadioButtonList ID="rblGender" runat="server">
<asp:ListItem Text="Male" Value="Male"></asp:ListItem>
<asp:ListItem Text="Female" Value="Female"></asp:ListItem>
</asp:RadioButtonList>
</td>
</tr>
<tr>
<td>Date of Birth:</td>
<td><asp:Calendar ID="calDOB" runat="server"></asp:Calendar></td>
</tr>
<tr>
<td></td>
<td><asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" /></td>
</tr>
</table>
</div>
</form>
</body>
</html>