<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Statistics.aspx.vb" Inherits="admin_Statistics" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    <br />
    There are&nbsp;&nbsp;<span class="badge badge-success"><asp:Label ID="lbl_studentcount" runat="server"></asp:Label></span>&nbsp;&nbsp;students in the Student Database.
    <br />
    <br />
    There are&nbsp;&nbsp;<span class="badge badge-success"><asp:Label ID="lbl_employercount" runat="server"></asp:Label></span>&nbsp;&nbsp;employers in the Employer Database.
    <br />
    <br />
    The average salary is:&nbsp;&nbsp;<span class="badge badge-success"><asp:Label ID="lbl_salarycount" runat="server" Text="Label"></asp:Label></span>





</asp:Content>

