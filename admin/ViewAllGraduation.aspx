<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ViewAllGraduation.aspx.vb" Inherits="admin_ViewAllGraduation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" DeleteCommand="DELETE FROM [dbo.final_graduation] WHERE [GID] = @GID" InsertCommand="INSERT INTO [dbo.final_graduation] ([GID], [SHORT_DESCR], [LONG_DESCR], [ACADEMIC_YEAR_RANGE]) VALUES (@GID, @SHORT_DESCR, @LONG_DESCR, @ACADEMIC_YEAR_RANGE)" SelectCommand="SELECT * FROM [dbo.final_graduation]" UpdateCommand="UPDATE [dbo.final_graduation] SET [SHORT_DESCR] = @SHORT_DESCR, [LONG_DESCR] = @LONG_DESCR, [ACADEMIC_YEAR_RANGE] = @ACADEMIC_YEAR_RANGE WHERE [GID] = @GID">
        <DeleteParameters>
            <asp:Parameter Name="GID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="GID" Type="Int32" />
            <asp:Parameter Name="SHORT_DESCR" Type="String" />
            <asp:Parameter Name="LONG_DESCR" Type="String" />
            <asp:Parameter Name="ACADEMIC_YEAR_RANGE" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="SHORT_DESCR" Type="String" />
            <asp:Parameter Name="LONG_DESCR" Type="String" />
            <asp:Parameter Name="ACADEMIC_YEAR_RANGE" Type="String" />
            <asp:Parameter Name="GID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView_graduation" runat="server" AutoGenerateColumns="False" DataKeyNames="GID" DataSourceID="SqlDataSource1" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="GID" HeaderText="Graduation ID" ReadOnly="True" SortExpression="GID" />
            <asp:BoundField DataField="SHORT_DESCR" HeaderText="Short Description" SortExpression="SHORT_DESCR" />
            <asp:BoundField DataField="LONG_DESCR" HeaderText="Long Description" SortExpression="LONG_DESCR" />
            <asp:BoundField DataField="ACADEMIC_YEAR_RANGE" HeaderText="Academic Year Range" SortExpression="ACADEMIC_YEAR_RANGE" />
        </Columns>
    </asp:GridView>

    <br />
    <br />

    <a class="btn btn-primary btn-lg" href="AddNewGraduation.aspx" role="button">Add New</a>


</asp:Content>

