<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="EmailPage.aspx.vb" Inherits="admin_EmailPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>Please select the graduation class you would like to email:</h3>
    <h4>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="SHORT_DESCR" DataValueField="GID">
        </asp:DropDownList>
        &nbsp;
        <asp:Button ID="Button2" runat="server" Text="Filter" Width="69px" />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" SelectCommand="SELECT [GID], [SHORT_DESCR] FROM [dbo.final_graduation]"></asp:SqlDataSource>
    </h4>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="SID" DataSourceID="SqlDataSource1" Visible="False" CellSpacing="10" Width="70%">
        <Columns>
            <asp:BoundField DataField="SID" HeaderText="Student ID" InsertVisible="False" ReadOnly="True" SortExpression="SID" />
            <asp:BoundField DataField="last_name" HeaderText="Last Name" SortExpression="last_name" />
            <asp:BoundField DataField="first_name" HeaderText="First Name" SortExpression="first_name" />
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
            <asp:BoundField DataField="GID" HeaderText="GID" SortExpression="GID" Visible="False" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" SelectCommand="SELECT [SID], [last_name], [first_name], [email], [GID] FROM [final_student] WHERE ([GID] = @GID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="GID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>


    <br />
    <h4><asp:Button ID="Button1" runat="server" Text="Send All" Visible="False" /></h4>


</asp:Content>

