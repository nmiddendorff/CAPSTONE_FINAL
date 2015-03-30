<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="About.aspx.vb" Inherits="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="sqlAbout" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" SelectCommand="SELECT * FROM [final_student]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="sqlAbout">
        <Columns>
            <asp:BoundField DataField="SID" HeaderText="SID" InsertVisible="False" ReadOnly="True" SortExpression="SID" />
            <asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name" />
            <asp:BoundField DataField="first_name" HeaderText="first_name" SortExpression="first_name" />
            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="major" HeaderText="major" SortExpression="major" />
            <asp:BoundField DataField="address1" HeaderText="address1" SortExpression="address1" />
            <asp:BoundField DataField="address2" HeaderText="address2" SortExpression="address2" />
            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
            <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
            <asp:BoundField DataField="EID" HeaderText="EID" SortExpression="EID" />
            <asp:BoundField DataField="salary" HeaderText="salary" SortExpression="salary" />
            <asp:BoundField DataField="job_title" HeaderText="job_title" SortExpression="job_title" />
            <asp:BoundField DataField="job_location" HeaderText="job_location" SortExpression="job_location" />
            <asp:BoundField DataField="GID" HeaderText="GID" SortExpression="GID" />
        </Columns>
    </asp:GridView>
    <br />
 <h1>About Us</h1>
    <div class="well">
        <p>WELCOME TO OUR ABOUT US PAGE!!! WE R CAPSTONE</p>
</div>


</asp:Content>

