<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="homepage.aspx.vb" Inherits="admin_homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="jumbotron">
  <h1>Student Records Database</h1>
  <p>View all the students, employees and graduation year as an administrator.</p>
</div>

    <div class="btn-group btn-group-justified" role="group" aria-label="...">
  <div class="btn-group" role="group">
    <a class="btn btn-primary btn-lg" href="ViewAllEmployee.aspx" role="button">View All Employers</a>
  </div>
  <div class="btn-group" role="group">
    <a class="btn btn-primary btn-lg" href="ViewAllStudent.aspx" role="button">View All Students</a>
  </div>
  <div class="btn-group" role="group" >
    <a class="btn btn-primary btn-lg" href="ViewAllGraduation.aspx" role="button" >View All Graduations</a>
  </div>
</div>





</asp:Content>

