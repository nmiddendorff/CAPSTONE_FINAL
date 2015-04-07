<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="AddNewStudent.aspx.vb" Inherits="AddNew" %>

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
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="SID" DataSourceID="SqlDataSource1" DefaultMode="Insert">
        <EditItemTemplate>
            SID:
            <asp:Label ID="SIDLabel1" runat="server" Text='<%# Eval("SID") %>' />
            <br />
            last_name:
            <asp:TextBox ID="last_nameTextBox" runat="server" Text='<%# Bind("last_name") %>' />
            <br />
            first_name:
            <asp:TextBox ID="first_nameTextBox" runat="server" Text='<%# Bind("first_name") %>' />
            <br />
            phone:
            <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
            <br />
            email:
            <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
            <br />
            major:
            <asp:TextBox ID="majorTextBox" runat="server" Text='<%# Bind("major") %>' />
            <br />
            address1:
            <asp:TextBox ID="address1TextBox" runat="server" Text='<%# Bind("address1") %>' />
            <br />
            address2:
            <asp:TextBox ID="address2TextBox" runat="server" Text='<%# Bind("address2") %>' />
            <br />
            city:
            <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
            <br />
            state:
            <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>' />
            <br />
            EID:
            <asp:TextBox ID="EIDTextBox" runat="server" Text='<%# Bind("EID") %>' />
            <br />
            salary:
            <asp:TextBox ID="salaryTextBox" runat="server" Text='<%# Bind("salary") %>' />
            <br />
            job_title:
            <asp:TextBox ID="job_titleTextBox" runat="server" Text='<%# Bind("job_title") %>' />
            <br />
            job_location:
            <asp:TextBox ID="job_locationTextBox" runat="server" Text='<%# Bind("job_location") %>' />
            <br />
            GID:
            <asp:TextBox ID="GIDTextBox" runat="server" Text='<%# Bind("GID") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            last_name:
            <asp:TextBox ID="last_nameTextBox" runat="server" Text='<%# Bind("last_name") %>' />
            <br />
            first_name:
            <asp:TextBox ID="first_nameTextBox" runat="server" Text='<%# Bind("first_name") %>' />
            <br />
            phone:
            <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
            <br />
            email:
            <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
            <br />
            major:
            <asp:TextBox ID="majorTextBox" runat="server" Text='<%# Bind("major") %>' />
            <br />
            address1:
            <asp:TextBox ID="address1TextBox" runat="server" Text='<%# Bind("address1") %>' />
            <br />
            address2:
            <asp:TextBox ID="address2TextBox" runat="server" Text='<%# Bind("address2") %>' />
            <br />
            city:
            <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
            <br />
            state:
            <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>' />
            <br />
            EID:
            <asp:TextBox ID="EIDTextBox" runat="server" Text='<%# Bind("EID") %>' />
            <br />
            salary:
            <asp:TextBox ID="salaryTextBox" runat="server" Text='<%# Bind("salary") %>' />
            <br />
            job_title:
            <asp:TextBox ID="job_titleTextBox" runat="server" Text='<%# Bind("job_title") %>' />
            <br />
            job_location:
            <asp:TextBox ID="job_locationTextBox" runat="server" Text='<%# Bind("job_location") %>' />
            <br />
            GID:
            <asp:TextBox ID="GIDTextBox" runat="server" Text='<%# Bind("GID") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Add" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            SID:
            <asp:Label ID="SIDLabel" runat="server" Text='<%# Eval("SID") %>' />
            <br />
            last_name:
            <asp:Label ID="last_nameLabel" runat="server" Text='<%# Bind("last_name") %>' />
            <br />
            first_name:
            <asp:Label ID="first_nameLabel" runat="server" Text='<%# Bind("first_name") %>' />
            <br />
            phone:
            <asp:Label ID="phoneLabel" runat="server" Text='<%# Bind("phone") %>' />
            <br />
            email:
            <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
            <br />
            major:
            <asp:Label ID="majorLabel" runat="server" Text='<%# Bind("major") %>' />
            <br />
            address1:
            <asp:Label ID="address1Label" runat="server" Text='<%# Bind("address1") %>' />
            <br />
            address2:
            <asp:Label ID="address2Label" runat="server" Text='<%# Bind("address2") %>' />
            <br />
            city:
            <asp:Label ID="cityLabel" runat="server" Text='<%# Bind("city") %>' />
            <br />
            state:
            <asp:Label ID="stateLabel" runat="server" Text='<%# Bind("state") %>' />
            <br />
            EID:
            <asp:Label ID="EIDLabel" runat="server" Text='<%# Bind("EID") %>' />
            <br />
            salary:
            <asp:Label ID="salaryLabel" runat="server" Text='<%# Bind("salary") %>' />
            <br />
            job_title:
            <asp:Label ID="job_titleLabel" runat="server" Text='<%# Bind("job_title") %>' />
            <br />
            job_location:
            <asp:Label ID="job_locationLabel" runat="server" Text='<%# Bind("job_location") %>' />
            <br />
            GID:
            <asp:Label ID="GIDLabel" runat="server" Text='<%# Bind("GID") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
</asp:FormView>

    <asp:Label ID="lbl_newstudent" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
</asp:Content>

