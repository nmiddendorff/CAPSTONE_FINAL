<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Contact.aspx.vb" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$-->

     <div class="text-center">

        <h1 class="caption" style="text-align: center">Contact Us</h1>



         <!-- Check to see if you are in postback.  If not, display the contact form. -->
        <% If Not IsPostBack Then%>

        <a class="btn btn-success" href="tel:+17122998667" role="button">Call Us: 712-299-8667</a>
         <br />
         <br />

        Your email address:<br />
        <asp:TextBox ID="senderAddress" runat="server" Width="201px"></asp:TextBox>
        <br />
        <br />
       
         Your message:<br /> 
        <!-- to make your box bigger add rows, columns, and textmode -->
        <asp:TextBox ID="senderMessage" runat="server" Rows="20" Columns="30" TextMode="MultiLine" Height="220px" Width="241px"></asp:TextBox>
        
        <br />
        <br />
        <asp:Button ID="sendMail" runat="server" Text="Send" />

        <!-- If you are in postback, display the confirmation label. -->
        <%Else%>

        <asp:Label ID="confirmSent" runat="server" Text=""></asp:Label>

        <!-- End your 'If' statement. -->
        <%End If%>

     </div>






<!--$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$-->
</asp:Content>