﻿<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ViewAllEmployers.aspx.vb" Inherits="admin_ViewAllEmployee" %>

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


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="EID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="EID" HeaderText="EID" InsertVisible="False" ReadOnly="True" SortExpression="EID" />
            <asp:BoundField DataField="emp_name" HeaderText="emp_name" SortExpression="emp_name" />
            <asp:BoundField DataField="emp_hq" HeaderText="emp_hq" SortExpression="emp_hq" />
            <asp:BoundField DataField="emp_phone" HeaderText="emp_phone" SortExpression="emp_phone" />
        </Columns>
    </asp:GridView>

    <br />
    <br />

    <a class="btn btn-primary btn-lg" href="AddNewEmployers.aspx" role="button">Add New</a>

</asp:Content>

