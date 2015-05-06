<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPageForDefault.master" AutoEventWireup="false" CodeFile="StudentAddEmp.aspx.vb" Inherits="StudentAddEmp" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" DeleteCommand="DELETE FROM [final_employee] WHERE [EID] = @EID" InsertCommand="INSERT INTO [final_employee] ([emp_name], [emp_hq], [emp_phone]) VALUES (@emp_name, @emp_hq, @emp_phone)" SelectCommand="SELECT * FROM [final_employee]" UpdateCommand="UPDATE [final_employee] SET [emp_name] = @emp_name, [emp_hq] = @emp_hq, [emp_phone] = @emp_phone WHERE [EID] = @EID">
        <DeleteParameters>
            <asp:Parameter Name="EID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="emp_name" Type="String" />
            <asp:Parameter Name="emp_hq" Type="String" />
            <asp:Parameter Name="emp_phone" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="emp_name" Type="String" />
            <asp:Parameter Name="emp_hq" Type="String" />
            <asp:Parameter Name="emp_phone" Type="String" />
            <asp:Parameter Name="EID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


    <br />
    <h3> Add New Employer</h3>


    <br />
    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" DefaultMode="Insert" DataKeyNames="EID">
        <EditItemTemplate>
            EID:
            <asp:Label ID="EIDLabel1" runat="server" Text='<%# Eval("EID") %>' />
            <br />
            Company Name:
            <asp:TextBox ID="emp_nameTextBox" runat="server" Text='<%# Bind("emp_name") %>' />
            <br />
            Company City &amp; State:
            <asp:TextBox ID="emp_hqTextBox" runat="server" Text='<%# Bind("emp_hq") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
<div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading">Panel heading</div> 
  
  
  <table class="table">
    <tr>
    <th class="tg-031e">Company Name</th>
    <th class="tg-031e"><asp:TextBox ID="emp_nameTextBox" runat="server" Text='<%# Bind("emp_name") %>' /></th>
    <th class="tg-031e">
        <asp:RequiredFieldValidator ID="validate_company" runat="server" ErrorMessage="Please enter a Company Name!" ForeColor="#FF3300" ControlToValidate="emp_nameTextBox"></asp:RequiredFieldValidator></th>
      </tr>
      <tr>
    <th class="tg-031e">HQ City:</th>
    <th class="tg-031e"><asp:TextBox ID="emp_hqTextBox" runat="server" Text='<%# Bind("emp_hq") %>' /></th>
    <th class="tg-031e">
        <asp:RequiredFieldValidator ID="validate_city" runat="server" ErrorMessage="Please enter a city!" ForeColor="#FF3300" ControlToValidate="emp_hqTextBox"></asp:RequiredFieldValidator></th>
  </tr>
  <tr>
    <th class="tg-031e"> <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Add" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </th>
    <th class="tg-031e"> </th>
  </tr>
</table>
</div>
           </InsertItemTemplate>
        <ItemTemplate>
            EID:
            <asp:Label ID="EIDLabel" runat="server" Text='<%# Eval("EID") %>' />
            <br />
            Company Name:
            <asp:Label ID="emp_nameLabel" runat="server" Text='<%# Bind("emp_name") %>' />
            <br />
            HQ City &amp; State:
            <asp:Label ID="emp_hqLabel" runat="server" Text='<%# Bind("emp_hq") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <br />
    <asp:Label ID="lbl_newEmployee" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Back" CausesValidation="false" />
    <br />
    </asp:Content>

