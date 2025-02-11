<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="AWT_5a.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>

/* DataList: Items in a box with a light border and margin */

.datalist-item {

border: 1px solid #ccc;

padding: 10px;

margin: 5px;

display: inline-block;

width: 200px;

vertical-align: top;

background: #f9f9f9;

}


/* FormView: Free-form layout with labels and values */

.formview-item {

margin: 10px 0;

}

.formview-label {

font-weight: bold;

margin-right: 10px;

}


/* ListView: Style items as list items */

.listview-ul {

list-style-type: none;

padding-left: 0;

}

.listview-li {

background: #e0f7fa;

margin: 5px 0;

padding: 8px;

border-radius: 4px;

}


/* Repeater: Card style with box shadow */

.repeater-card {

border: 1px solid #ddd;

background: #fff;

padding: 10px;

margin: 5px;

box-shadow: 2px 2px 5px rgba(0,0,0,0.1);

}

</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProductDBConnectionString %>" OnSelecting="SqlDataSource1_Selecting" ProviderName="<%$ ConnectionStrings:ProductDBConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
      <!-- DataList: Render using DIVs for a card-like look -->
            <h2>DataList Example</h2>
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <div class="datalist-item">
                        <h3><%# Eval("ProductName") %></h3>
                        <p>Price: $<%# Eval("Price", "{0:F2}") %></p>
                        <p><%# Eval("Description") %></p>
                    </div>
                </ItemTemplate>
            </asp:DataList>

            <!-- DetailsView: Uses the default table layout -->
            <h2>DetailsView Example</h2>
            <asp:DetailsView ID="DetailsView1" runat="server"
                DataSourceID="SqlDataSource1" AutoGenerateRows="True">
            </asp:DetailsView>

            <!-- FormView: Custom layout using DIVs and SPANs -->
            <h2>FormView Example</h2>
            <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" DefaultMode="ReadOnly">
                <ItemTemplate>
                    <div class="formview-item">
                        <span class="formview-label">Product ID:</span>
                        <span><%# Eval("ProductID") %></span>
                    </div>
                    <div class="formview-item">
                        <span class="formview-label">Product Name:</span>
                        <span><%# Eval("ProductName") %></span>
                    </div>
                    <div class="formview-item">
                        <span class="formview-label">Price:</span>
                        <span>$<%# Eval("Price", "{0:F2}") %></span>
                    </div>
                    <div class="formview-item">
                        <span class="formview-label">Description:</span>
                        <span><%# Eval("Description") %></span>
                    </div>
                </ItemTemplate>
            </asp:FormView>

            <!-- GridView: Default table layout with paging enabled -->
            <h2>GridView Example</h2>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1"
                AutoGenerateColumns="True" AllowPaging="True" PageSize="3">
            </asp:GridView>

            <!-- ListView: Render items in an unordered list -->
            <h2>ListView Example</h2>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                <LayoutTemplate>
                    <ul class="listview-ul" id="itemPlaceholderContainer" runat="server">
                        <asp:PlaceHolder ID="itemPlaceholder" runat="server" />
                    </ul>
                </LayoutTemplate>
                <ItemTemplate>
                    <li class="listview-li">
                        <strong><%# Eval("ProductName") %></strong> -
                        $<%# Eval("Price", "{0:F2}") %>
                        <br />
                        <%# Eval("Description") %>
                    </li>
                </ItemTemplate>
            </asp:ListView>

            <!-- Repeater: Card-like layout -->
            <h2>Repeater Example</h2>
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                <HeaderTemplate>
                    <div style="display: flex; flex-wrap: wrap;">
                </HeaderTemplate>
                <ItemTemplate>
                    <div class="repeater-card" style="flex: 1 0 30%; margin: 10px;">
                        <h3><%# Eval("ProductName") %></h3>
                        <p><strong>Price:</strong> $<%# Eval("Price", "{0:F2}") %></p>
                        <p><%# Eval("Description") %></p>
                    </div>
                </ItemTemplate>
                <FooterTemplate>
                    </div>
                </FooterTemplate>
            </asp:Repeater>





            </div>
    </form>
</body>
</html>
