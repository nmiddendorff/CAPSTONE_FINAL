<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ViewAllEmployee.aspx.vb" Inherits="admin_ViewAllEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" DeleteCommand="DELETE FROM [final_employee] WHERE [EID] = @EID" InsertCommand="INSERT INTO [final_employee] ([emp_name], [emp_hq], [emp_phone]) VALUES (@emp_name, @emp_hq, @emp_phone)" SelectCommand="SELECT * FROM [final_employee]" UpdateCommand="UPDATE [final_employee] SET [emp_name] = @emp_name, [emp_hq] = @emp_hq, [emp_phone] = @emp_phone WHERE [EID] = @EID">
        <DeleteParameters>
            <asp:Parameter Name="EID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="emp_name" Type="String" />
            <asp:Parameter Name="emp_hq" Type="String" />
            <asp:Parameter Name="emp_phone" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="emp_name" Type="String" />
            <asp:Parameter Name="emp_hq" Type="String" />
            <asp:Parameter Name="emp_phone" Type="String" />
            <asp:Parameter Name="EID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


    <br />
    <h1>Employers</h1>
    <br />


    <asp:GridView ID="GridView_employee" runat="server" AutoGenerateColumns="False" DataKeyNames="EID" DataSourceID="SqlDataSource1" AllowSorting="True" CellPadding="4" Width="645px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" ForeColor="Black" GridLines="Horizontal">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="emp_name" HeaderText="Employer Name" SortExpression="emp_name" />
            <asp:BoundField DataField="emp_hq" HeaderText="Employer HQ" SortExpression="emp_hq" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>

    <br />
    <asp:Label ID="lbl_deletedEmployee" runat="server" Font-Bold="True" Font-Size="X-Small" ForeColor="Red"></asp:Label>

    &nbsp;

    <br />
    <br />

    <a class="btn btn-primary btn-lg" href="AddNewEmployee.aspx" role="button">Add New</a>

</asp:Content>

