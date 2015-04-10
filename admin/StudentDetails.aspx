﻿<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="StudentDetails.aspx.vb" Inherits="admin_StudentDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" SelectCommand="SELECT * FROM [final_student] WHERE ([SID] = @SID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="SID" QueryStringField="SID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="SID" DataSourceID="SqlDataSource1">
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
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
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

        </ItemTemplate>
    </asp:FormView>

</asp:Content>

