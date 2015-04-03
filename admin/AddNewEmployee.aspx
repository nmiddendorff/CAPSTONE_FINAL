<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="AddNewEmployee.aspx.vb" Inherits="admin_AddNewEmployee" %>

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
    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" DefaultMode="Insert" DataKeyNames="EID">
        <EditItemTemplate>
            EID:
            <asp:Label ID="EIDLabel1" runat="server" Text='<%# Eval("EID") %>' />
            <br />
            emp_name:
            <asp:TextBox ID="emp_nameTextBox" runat="server" Text='<%# Bind("emp_name") %>' />
            <br />
            emp_hq:
            <asp:TextBox ID="emp_hqTextBox" runat="server" Text='<%# Bind("emp_hq") %>' />
            <br />
            emp_phone:
            <asp:TextBox ID="emp_phoneTextBox" runat="server" Text='<%# Bind("emp_phone") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            emp_name:
            <asp:TextBox ID="emp_nameTextBox" runat="server" Text='<%# Bind("emp_name") %>' />
            <br />
            emp_hq:
            <asp:TextBox ID="emp_hqTextBox" runat="server" Text='<%# Bind("emp_hq") %>' />
            <br />
            emp_phone:
            <asp:TextBox ID="emp_phoneTextBox" runat="server" Text='<%# Bind("emp_phone") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            EID:
            <asp:Label ID="EIDLabel" runat="server" Text='<%# Eval("EID") %>' />
            <br />
            emp_name:
            <asp:Label ID="emp_nameLabel" runat="server" Text='<%# Bind("emp_name") %>' />
            <br />
            emp_hq:
            <asp:Label ID="emp_hqLabel" runat="server" Text='<%# Bind("emp_hq") %>' />
            <br />
            emp_phone:
            <asp:Label ID="emp_phoneLabel" runat="server" Text='<%# Bind("emp_phone") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <br />

</asp:Content>

