<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ViewAllStudent.aspx.vb" Inherits="AddNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" DeleteCommand="DELETE FROM [final_student] WHERE [SID] = @SID" InsertCommand="INSERT INTO [final_student] ([last_name], [first_name], [phone], [email], [major], [address1], [address2], [city], [state], [EID], [salary], [job_title], [job_location], [GID]) VALUES (@last_name, @first_name, @phone, @email, @major, @address1, @address2, @city, @state, @EID, @salary, @job_title, @job_location, @GID)" SelectCommand="SELECT * FROM [final_student]" UpdateCommand="UPDATE [final_student] SET [last_name] = @last_name, [first_name] = @first_name, [phone] = @phone, [email] = @email, [major] = @major, [address1] = @address1, [address2] = @address2, [city] = @city, [state] = @state, [EID] = @EID, [salary] = @salary, [job_title] = @job_title, [job_location] = @job_location, [GID] = @GID WHERE [SID] = @SID">
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
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="SID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="SID" HeaderText="Student ID" InsertVisible="False" ReadOnly="True" SortExpression="SID" />
            <asp:BoundField DataField="last_name" HeaderText="Last Name" SortExpression="last_name" />
            <asp:BoundField DataField="first_name" HeaderText="First Name" SortExpression="first_name" />
            <asp:BoundField DataField="phone" HeaderText="Phone Number" SortExpression="phone" />
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
            <asp:BoundField DataField="major" HeaderText="Major" SortExpression="major" />
            <asp:BoundField DataField="address1" HeaderText="Address 1" SortExpression="address1" />
            <asp:BoundField DataField="address2" HeaderText="Address 2" SortExpression="address2" />
            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
            <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
            <asp:BoundField DataField="EID" HeaderText="Employee ID" SortExpression="EID" />
            <asp:BoundField DataField="salary" HeaderText="Salary" SortExpression="salary" />
            <asp:BoundField DataField="job_title" HeaderText="Job Title" SortExpression="job_title" />
            <asp:BoundField DataField="job_location" HeaderText="Job Location" SortExpression="job_location" />
            <asp:BoundField DataField="GID" HeaderText="Graduation ID" SortExpression="GID" />
        </Columns>
    </asp:GridView>
<br />
    <asp:Label ID="lbl_deletedStudent" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
    <br />
    <br />

    <a class="btn btn-primary btn-lg" href="AddNewStudent.aspx" role="button">Add New</a>

</asp:Content>

