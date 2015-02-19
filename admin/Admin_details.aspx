<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="admin_Details.aspx.vb" Inherits="details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:HyperLink ID="materials" runat="server" NavigateUrl="~/materials.aspx">Back to Materials page</asp:HyperLink>
    <br />



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SouthLiberty %>" DeleteCommand="DELETE FROM [project_Materials] WHERE [ID] = @ID" InsertCommand="INSERT INTO [project_Materials] ([Title], [Author], [Publisher], [Year], [Categoty]) VALUES (@Title, @Author, @Publisher, @Year, @Categoty)" SelectCommand="SELECT * FROM [project_Materials] WHERE ([ID] = @ID)" UpdateCommand="UPDATE [project_Materials] SET [Title] = @Title, [Author] = @Author, [Publisher] = @Publisher, [Year] = @Year, [Categoty] = @Categoty WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter Name="Publisher" Type="String" />
            <asp:Parameter Name="Year" Type="String" />
            <asp:Parameter Name="Categoty" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="ID" QueryStringField="ID" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter Name="Publisher" Type="String" />
            <asp:Parameter Name="Year" Type="String" />
            <asp:Parameter Name="Categoty" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
        </asp:SqlDataSource>
    </p>
<p>
    <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="SqlDataSource1" Height="50px" Width="298px" AutoGenerateRows="False" DataKeyNames="ID" HorizontalAlign="Center">
        <Fields>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
            <asp:BoundField DataField="Publisher" HeaderText="Publisher" SortExpression="Publisher" />
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
            <asp:BoundField DataField="Categoty" HeaderText="Categoty" SortExpression="Categoty" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
</p>
</asp:Content>

