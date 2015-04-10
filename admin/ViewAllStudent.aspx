﻿<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ViewAllStudent.aspx.vb" Inherits="AddNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" DeleteCommand="DELETE FROM [final_student] WHERE [SID] = @SID" InsertCommand="INSERT INTO [final_student] ([last_name], [first_name], [phone], [email], [major], [address1], [address2], [city], [state], [EID], [salary], [job_title], [job_location], [GID]) VALUES (@last_name, @first_name, @phone, @email, @major, @address1, @address2, @city, @state, @EID, @salary, @job_title, @job_location, @GID)" SelectCommand="SELECT final_student.SID, final_student.first_name, final_student.last_name, final_employee.emp_name, [dbo.final_graduation].LONG_DESCR FROM final_student INNER JOIN final_employee ON final_student.EID = final_employee.EID INNER JOIN [dbo.final_graduation] ON final_student.GID = [dbo.final_graduation].GID" UpdateCommand="UPDATE [final_student] SET [last_name] = @last_name, [first_name] = @first_name, [phone] = @phone, [email] = @email, [major] = @major, [address1] = @address1, [address2] = @address2, [city] = @city, [state] = @state, [EID] = @EID, [salary] = @salary, [job_title] = @job_title, [job_location] = @job_location, [GID] = @GID WHERE [SID] = @SID">
        <DeleteParameters>
            <asp:Parameter Name="SID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="last_name" Type="String" />
            <asp:Parameter Name="first_name" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="major" Type="String" />
            <asp:Parameter Name="address1" Type="String" />
            <asp:Parameter Name="address2" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="EID" Type="Int32" />
            <asp:Parameter Name="salary" Type="Int32" />
            <asp:Parameter Name="job_title" Type="String" />
            <asp:Parameter Name="job_location" Type="String" />
            <asp:Parameter Name="GID" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="last_name" Type="String" />
            <asp:Parameter Name="first_name" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="major" Type="String" />
            <asp:Parameter Name="address1" Type="String" />
            <asp:Parameter Name="address2" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="EID" Type="Int32" />
            <asp:Parameter Name="salary" Type="Int32" />
            <asp:Parameter Name="job_title" Type="String" />
            <asp:Parameter Name="job_location" Type="String" />
            <asp:Parameter Name="GID" Type="Int32" />
            <asp:Parameter Name="SID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    This SQL DataSouce has final_student INNER JOINED with final_employee<br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="SID" DataSourceID="SqlDataSource1" AllowSorting="True" Width="765px">
        <Columns>
            <asp:BoundField DataField="SID" HeaderText="SID" InsertVisible="False" ReadOnly="True" SortExpression="SID" />
            <asp:BoundField DataField="first_name" HeaderText="first_name" SortExpression="first_name" />
            <asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name" />
            <asp:BoundField DataField="emp_name" HeaderText="emp_name" SortExpression="emp_name" />
            <asp:BoundField DataField="LONG_DESCR" HeaderText="LONG_DESCR" SortExpression="LONG_DESCR" />
            <asp:HyperLinkField DataNavigateUrlFields="SID" DataNavigateUrlFormatString="StudentDetails.aspx?SID={0}" Text="SELECT" />
        </Columns>
    </asp:GridView>
<br />
    <asp:Label ID="lbl_deletedStudent" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
    <br />
    <br />

    <a class="btn btn-primary btn-lg" href="AddNewStudent.aspx" role="button">Add New</a>

</asp:Content>

