<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="admin_materials.aspx.vb" Inherits="materials" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msci3300_g8ConnectionString %>" DeleteCommand="DELETE FROM [project_Materials] WHERE [ID] = @ID" InsertCommand="INSERT INTO [project_Materials] ([Title], [Author], [Publisher], [Year], [Categoty]) VALUES (@Title, @Author, @Publisher, @Year, @Categoty)" SelectCommand="SELECT * FROM [project_Materials]" UpdateCommand="UPDATE [project_Materials] SET [Title] = @Title, [Author] = @Author, [Publisher] = @Publisher, [Year] = @Year, [Categoty] = @Categoty WHERE [ID] = @ID">
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
        <UpdateParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter Name="Publisher" Type="String" />
            <asp:Parameter Name="Year" Type="String" />
            <asp:Parameter Name="Categoty" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Width="553px">
        <Columns>
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
            <asp:BoundField DataField="Categoty" HeaderText="Categoty" SortExpression="Categoty" />
            <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="details.aspx?ID={0}" HeaderText="Details" Text="Select" />
        </Columns>



</asp:GridView>




</asp:Content>

