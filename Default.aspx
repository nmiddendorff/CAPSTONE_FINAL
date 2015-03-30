<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPageforDefault.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1></h1>
    <h2 class="text-center">Student Contact Management System</h2>

    <div class="jumbotron">
  
  <div style="text-align: center;">
 
   <div style="width: 400px; margin-left: auto; margin-right:auto;">
   <asp:Login ID="Login1" runat="server" Width="447px">
    </asp:Login>
 </div>
</div>
</div>
       <div class="alert alert-danger" role="alert">
  <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
  <span class="sr-only">Error:</span>
  You must be logged in to access any content on this webpage.
</div>


     <div style="text-align: center">
         <br />
         <br />
         <br />
    </div>
    <br />
     <br />
     <br />
     
</asp:Content>

