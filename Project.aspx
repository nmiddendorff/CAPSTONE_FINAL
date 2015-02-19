<%@ Page Title="" Language="VB" MasterPageFile="~/masterpage.master" AutoEventWireup="false" CodeFile="Project.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<!-- ##########################panels############################### -->
      <div class="page-header">
        <h1>Overview of South Liberty Public Library Project</h1>
      </div>
      <div class="row">
        <div class="col-sm-4">
          <div class="panel panel-primary">
            <div class="panel-heading">
              <h3 class="panel-title">Rules, Requirements & Constraints</h3>
            </div>
            <div class="panel-body">
			<p>Business rules are statements that describe key business decisions or policies, such as spending policies and approval matrices. Our constraints list show limitations for the way the system will be developed. Our Dictionary outlines words and people in the library industry. </p>
            
            <a class="btn btn-success" href="./PDF_Content/Business Rules Constraints Dictionary.pdf" role="button">Link</a>
            </div>
          </div>
          <div class="panel panel-primary">
            <div class="panel-heading">
              <h3 class="panel-title">Cost Benefit Analysis</h3>
            </div>
            <div class="panel-body">
			<p>The Cost Benefit Analysis includes a PDF which outlines the Return on Investment, Break Even Point and other necessary pricing information </p>
            
            <a class="btn btn-success" href="./PDF_Content/Cost Benefit Analysis.pdf" role="button">Link</a>
            </div>
          </div>
          
        </div><!-- /.col-sm-4 -->
        <div class="col-sm-4">
          <div class="panel panel-primary">
            <div class="panel-heading">
              <h3 class="panel-title">Project Feasibility</h3>
            </div>
            <div class="panel-body">
				<p>This section describes how we determined the economic, technical, and organizational feasibility of this project. This information is needed for the project planning and design, and can be used to help secured construction contracts and financing for the project.</p>
            
              <a class="btn btn-success" href="./PDF_Content/Economic Feasibility.pdf" role="button">Link</a>
            </div>
          </div>
          <div class="panel panel-primary">
            <div class="panel-heading">
              <h3 class="panel-title">Inception Deck</h3>
            </div>
            <div class="panel-body">
			<p>Below is a lightweight, easy to use form that describes the entire project in sections. This document will be used to ensure our project is headed in the right direction before development begins.</p>
            
              <a class="btn btn-success" href="./PDF_Content/Inception Deck.pdf" role="button">Link</a>
            </div>
          </div>
          
        </div><!-- /.col-sm-4 -->
        <div class="col-sm-4">
          <div class="panel panel-primary">
            <div class="panel-heading">
              <h3 class="panel-title">Plan and Schedule</h3>
            </div>
            <div class="panel-body">
			<p>Time estimation for each user stories is given, and priority for all user stories are ranked by the customer.</p>
            
              <a class="btn btn-success" href="./PDF_Content/Plan and Schedule.pdf" role="button">Link</a>
            </div>
          </div>
          <div class="panel panel-primary">
            <div class="panel-heading">
              <h3 class="panel-title">User Stories and Use Case Diagram</h3>
            </div>
            <div class="panel-body">
			<p>Our user stories are short, simple descriptions of features told from the point of view of the person needing the specific capability. Each follows the same template to easily document the features (end results) our project will be able to accomplish. In addition, our customer has ranked the importance of these features, which dictates the order in which they will be constructed. </p>
             
              <a class="btn btn-success" href="./PDF_Content/User Stories and Use Case Diagram.pdf" role="button">Link</a>
            </div>
          </div>
        </div><!-- /.col-sm-4 -->
      </div>
	  <img src="./photos/git.png" alt="git" style="width:50px;">
	  <a class="btn btn-default" href="https://github.com/UIowa-6K183/Group8-Library" role="button">Link to GitHub</a>
    <!-- #######################panels############################ -->
</asp:Content>

