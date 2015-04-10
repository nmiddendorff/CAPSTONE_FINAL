<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="SEARCH.aspx.vb" Inherits="admin_SEARCH" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" SelectCommand="SELECT [dbo.final_graduation].*, final_student.*, final_employee.* FROM [dbo.final_graduation] INNER JOIN final_student ON [dbo.final_graduation].GID = final_student.GID INNER JOIN final_employee ON final_student.EID = final_employee.EID"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1"></asp:GridView>

    <ul>
                  <li><div class="form-group"><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></div></li>
              <li><button type="submit" class="btn btn-default">Submit</button></li>
    </ul>

</asp:Content>

