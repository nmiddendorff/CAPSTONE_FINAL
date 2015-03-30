<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Admin.aspx.vb" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>ADMIN PAGE!</h1>
<p>&nbsp;</p>
    <ul class="nav navbar-nav">
         <li><asp:HyperLink ID="Admin_Materials" runat="server" NavigateUrl="~/admin/admin_materials.aspx">Admin Materials</asp:HyperLink></li>  
         <li><asp:HyperLink ID="Admin_New" runat="server" NavigateUrl="~/admin/admin_new.aspx">Admin New</asp:HyperLink></li>  
	     <li><asp:HyperLink ID="Admin_Patrons" runat="server" NavigateUrl="~/admin_patrons.aspx">Admin Patrons</asp:HyperLink></li>   

   </ul>
</asp:Content>

