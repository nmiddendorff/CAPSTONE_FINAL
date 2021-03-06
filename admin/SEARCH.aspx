﻿<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="SEARCH.aspx.vb" Inherits="admin_SEARCH" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">





    Search one item at a time:



    <table class="tg">
  <tr>
    <th class="tg-031e"><p class="text-left">Search First Name:  <br/></p></th>
    <th class="tg-031e"><div class="form-group"><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></div></th>
    <th class="tg-031e">
        <asp:Button ID="Button1" runat="server" Text="Search" />
      </th>
  </tr>


  <tr>
    <th class="tg-031e"><p class="text-left">Search Last Name:  <br/></p></th>
    <th class="tg-031e"><div class="form-group"><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></div></th>
    <th class="tg-031e">
        <asp:Button ID="Button2" runat="server" Text="Search" />
      </th>
  </tr>

  <tr>
    <th class="tg-031e"><p class="text-left">Search City:  <br/></p></th>
    <th class="tg-031e"><div class="form-group"><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></div></th>
    <th class="tg-031e">
        <asp:Button ID="Button3" runat="server" Text="Search" />
      </th>
  </tr>

  <tr>
    <th class="tg-031e"><p class="text-left">Search Employer:  <br/></p></th>
    <th class="tg-031e"><div class="form-group"><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></div></th>
    <th class="tg-031e">
        <asp:Button ID="Button4" runat="server" Text="Search" />
      </th>
  </tr>
</table>





    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" SelectCommand="SELECT * FROM [final_student]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="SID" DataSourceID="SqlDataSource1" Visible="False">
        <Columns>
            <asp:BoundField DataField="SID" HeaderText="SID" InsertVisible="False" ReadOnly="True" SortExpression="SID" />
            <asp:BoundField DataField="last_name" HeaderText="Last Name" SortExpression="last_name" />
            <asp:BoundField DataField="first_name" HeaderText="First Name" SortExpression="first_name" />
            <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
            <asp:BoundField DataField="major" HeaderText="Major" SortExpression="major" />
            <asp:BoundField DataField="address1" HeaderText="Address 1" SortExpression="address1" />
            <asp:BoundField DataField="address2" HeaderText="Address 2" SortExpression="address2" />
            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
            <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
            <asp:BoundField DataField="EID" HeaderText="Employer ID" SortExpression="EID" />
            <asp:BoundField DataField="salary" HeaderText="Salary" SortExpression="salary" />
            <asp:BoundField DataField="job_title" HeaderText="Job Title" SortExpression="job_title" />
            <asp:BoundField DataField="job_location" HeaderText="Job Location" SortExpression="job_location" />
            <asp:BoundField DataField="GID" HeaderText="Graduation ID" SortExpression="GID" />
            <asp:BoundField DataField="comments" HeaderText="Comments" SortExpression="comments" />
            <asp:BoundField DataField="last_contact" HeaderText="Last Contact" SortExpression="last_contact" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" SelectCommand="SELECT * FROM [final_student]"></asp:SqlDataSource>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="SID" DataSourceID="SqlDataSource2" Visible="False">
        <Columns>
            <asp:BoundField DataField="SID" HeaderText="Student ID" InsertVisible="False" ReadOnly="True" SortExpression="SID" />
            <asp:BoundField DataField="last_name" HeaderText="Last Name" SortExpression="last_name" />
            <asp:BoundField DataField="first_name" HeaderText="First Name" SortExpression="first_name" />
            <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
            <asp:BoundField DataField="major" HeaderText="Major" SortExpression="major" />
            <asp:BoundField DataField="address1" HeaderText="Address 1" SortExpression="address1" />
            <asp:BoundField DataField="address2" HeaderText="Address 2" SortExpression="address2" />
            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
            <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
            <asp:BoundField DataField="EID" HeaderText="Employer ID" SortExpression="EID" />
            <asp:BoundField DataField="salary" HeaderText="Salary" SortExpression="salary" />
            <asp:BoundField DataField="job_title" HeaderText="Job Title" SortExpression="job_title" />
            <asp:BoundField DataField="job_location" HeaderText="Job Location" SortExpression="job_location" />
            <asp:BoundField DataField="GID" HeaderText="Gruadtion ID" SortExpression="GID" />
            <asp:BoundField DataField="comments" HeaderText="Comments" SortExpression="comments" />
            <asp:BoundField DataField="last_contact" HeaderText="Last Contact" SortExpression="last_contact" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" SelectCommand="SELECT * FROM [final_student]"></asp:SqlDataSource>
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="SID" DataSourceID="SqlDataSource3" Visible="False">
        <Columns>
            <asp:BoundField DataField="SID" HeaderText="Student ID" InsertVisible="False" ReadOnly="True" SortExpression="SID" />
            <asp:BoundField DataField="last_name" HeaderText="Last Name" SortExpression="last_name" />
            <asp:BoundField DataField="first_name" HeaderText="First Name" SortExpression="first_name" />
            <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
            <asp:BoundField DataField="major" HeaderText="Major" SortExpression="major" />
            <asp:BoundField DataField="address1" HeaderText="Address 1" SortExpression="address1" />
            <asp:BoundField DataField="address2" HeaderText="Address 2" SortExpression="address2" />
            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
            <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
            <asp:BoundField DataField="EID" HeaderText="Employer ID" SortExpression="EID" />
            <asp:BoundField DataField="salary" HeaderText="Salary" SortExpression="salary" />
            <asp:BoundField DataField="job_title" HeaderText="Job Title" SortExpression="job_title" />
            <asp:BoundField DataField="job_location" HeaderText="Job Location" SortExpression="job_location" />
            <asp:BoundField DataField="GID" HeaderText="Graduation ID" SortExpression="GID" />
            <asp:BoundField DataField="comments" HeaderText="Comments" SortExpression="comments" />
            <asp:BoundField DataField="last_contact" HeaderText="Last Contact" SortExpression="last_contact" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" SelectCommand="SELECT * FROM [final_employee]"></asp:SqlDataSource>
    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="EID" DataSourceID="SqlDataSource4" Visible="False">
        <Columns>
            <asp:BoundField DataField="EID" HeaderText="Employer ID" InsertVisible="False" ReadOnly="True" SortExpression="EID" />
            <asp:BoundField DataField="emp_name" HeaderText="Employer Name" SortExpression="emp_name" />
            <asp:BoundField DataField="emp_hq" HeaderText="Employer HQ" SortExpression="emp_hq" />
            <asp:BoundField DataField="emp_phone" HeaderText="Employer Phone" SortExpression="emp_phone" />
        </Columns>
    </asp:GridView>
    <br />
    <br />
    <br />
    <br />
    <br />



</asp:Content>

