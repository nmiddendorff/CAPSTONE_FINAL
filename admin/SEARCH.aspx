<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="SEARCH.aspx.vb" Inherits="admin_SEARCH" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">





    Search one item at a time:
<table class="tg">
  <tr>
    <th class="tg-031e">   <p class="text-left">Search First Name:</p> 
   <div class="form-group"><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></div></th>
    
      <th class="tg-031e">       <p class="text-left">Search Last Name:</p> 
   <div class="form-group"><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></div></th>
    
      <th class="tg-031e"><p class="text-left">Search City:</p> 
   <div class="form-group"><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></div></th>
    
      <th class="tg-031e">       <p class="text-left">Search Employer:</p> 
   <div class="form-group"><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></div></th>
  </tr>
</table>



    <br />
    <br />

    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" SelectCommand="SELECT * FROM [final_student]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="SID" DataSourceID="SqlDataSource1">
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
            <asp:BoundField DataField="comments" HeaderText="comments" SortExpression="comments" />
            <asp:BoundField DataField="last_contact" HeaderText="last_contact" SortExpression="last_contact" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" SelectCommand="SELECT * FROM [final_student]"></asp:SqlDataSource>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="SID" DataSourceID="SqlDataSource2">
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
            <asp:BoundField DataField="comments" HeaderText="comments" SortExpression="comments" />
            <asp:BoundField DataField="last_contact" HeaderText="last_contact" SortExpression="last_contact" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" SelectCommand="SELECT * FROM [final_student]"></asp:SqlDataSource>
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="SID" DataSourceID="SqlDataSource3">
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
            <asp:BoundField DataField="comments" HeaderText="comments" SortExpression="comments" />
            <asp:BoundField DataField="last_contact" HeaderText="last_contact" SortExpression="last_contact" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" SelectCommand="SELECT * FROM [final_employee]"></asp:SqlDataSource>
    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="EID" DataSourceID="SqlDataSource4">
        <Columns>
            <asp:BoundField DataField="EID" HeaderText="EID" InsertVisible="False" ReadOnly="True" SortExpression="EID" />
            <asp:BoundField DataField="emp_name" HeaderText="emp_name" SortExpression="emp_name" />
            <asp:BoundField DataField="emp_hq" HeaderText="emp_hq" SortExpression="emp_hq" />
            <asp:BoundField DataField="emp_phone" HeaderText="emp_phone" SortExpression="emp_phone" />
        </Columns>
    </asp:GridView>
    <br />
    <br />
    <br />
    <br />
    <br />



</asp:Content>

