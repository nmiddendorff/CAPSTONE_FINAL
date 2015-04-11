<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Statistics.aspx.vb" Inherits="admin_Statistics" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    <br />
    How many students are in the Student Database?&nbsp;&nbsp;<span class="badge badge-success"><asp:Label ID="lbl_studentcount" runat="server"></asp:Label></span>
    <br />
    <br />
    How many employers are in the Employer Database?&nbsp;&nbsp;<span class="badge badge-success"><asp:Label ID="lbl_employercount" runat="server"></asp:Label></span>
  





</asp:Content>

