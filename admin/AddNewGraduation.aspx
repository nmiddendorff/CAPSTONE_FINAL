

<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="AddNewGraduation.aspx.vb" Inherits="admin_AddNewGraduation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" DeleteCommand="DELETE FROM [dbo.final_graduation] WHERE [GID] = @GID" InsertCommand="INSERT INTO [dbo.final_graduation] ([GID], [SHORT_DESCR], [LONG_DESCR], [ACADEMIC_YEAR_RANGE]) VALUES (@GID, @SHORT_DESCR, @LONG_DESCR, @ACADEMIC_YEAR_RANGE)" SelectCommand="SELECT * FROM [dbo.final_graduation]" UpdateCommand="UPDATE [dbo.final_graduation] SET [SHORT_DESCR] = @SHORT_DESCR, [LONG_DESCR] = @LONG_DESCR, [ACADEMIC_YEAR_RANGE] = @ACADEMIC_YEAR_RANGE WHERE [GID] = @GID">
        <DeleteParameters>
            <asp:Parameter Name="GID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="GID" Type="Int32" />
            <asp:Parameter Name="SHORT_DESCR" Type="String" />
            <asp:Parameter Name="LONG_DESCR" Type="String" />
            <asp:Parameter Name="ACADEMIC_YEAR_RANGE" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="SHORT_DESCR" Type="String" />
            <asp:Parameter Name="LONG_DESCR" Type="String" />
            <asp:Parameter Name="ACADEMIC_YEAR_RANGE" Type="String" />
            <asp:Parameter Name="GID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <h1>Add Graduation</h1>
    <h2>Instructions</h2>
   <h4> <b>Graduation ID:</b> Year + 1(Summer), 3(Fall), 5(Winter), 8(Spring)</h4>
   <h5>[E.g. 20141, 20148] </h5>
    <h4><b>Short Description:</b> Term + Year</h4>
    <h5>[E.g. Summer 2014, Spring 2015]</h5>
    <h4><b>Long Description:</b> Add fiscal year</h4> 
    <h5>[E.g. Summer 2014-15, Spring 2014-15]</h5>
    <h4><b>Academic Year Range:</b> Full Fiscal Year</h4>
    <h5>[E.g. 2014-2015]</h5>
    <br />

    <asp:FormView ID="FormView1" runat="server" DataKeyNames="GID" DataSourceID="SqlDataSource1" DefaultMode="Insert">
        <EditItemTemplate>
            GID:
            <asp:Label ID="GIDLabel1" runat="server" Text='<%# Eval("GID") %>' />
            <br />
            SHORT_DESCR:
            <asp:TextBox ID="SHORT_DESCRTextBox" runat="server" Text='<%# Bind("SHORT_DESCR") %>' />
            <br />
            LONG_DESCR:
            <asp:TextBox ID="LONG_DESCRTextBox" runat="server" Text='<%# Bind("LONG_DESCR") %>' />
            <br />
            ACADEMIC_YEAR_RANGE:
            <asp:TextBox ID="ACADEMIC_YEAR_RANGETextBox" runat="server" Text='<%# Bind("ACADEMIC_YEAR_RANGE") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Gradutation ID:
            <asp:TextBox ID="GIDTextBox" runat="server" Text='<%# Bind("GID") %>' />
            <br />
            Short Description:
            <asp:TextBox ID="SHORT_DESCRTextBox" runat="server" Text='<%# Bind("SHORT_DESCR") %>' />
            <br />
            Long Description:
            <asp:TextBox ID="LONG_DESCRTextBox" runat="server" Text='<%# Bind("LONG_DESCR") %>' />
            <br />
            Academic Year Range:
            <asp:TextBox ID="ACADEMIC_YEAR_RANGETextBox" runat="server" Text='<%# Bind("ACADEMIC_YEAR_RANGE") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Add" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            GID:
            <asp:Label ID="GIDLabel" runat="server" Text='<%# Eval("GID") %>' />
            <br />
            SHORT_DESCR:
            <asp:Label ID="SHORT_DESCRLabel" runat="server" Text='<%# Bind("SHORT_DESCR") %>' />
            <br />
            LONG_DESCR:
            <asp:Label ID="LONG_DESCRLabel" runat="server" Text='<%# Bind("LONG_DESCR") %>' />
            <br />
            ACADEMIC_YEAR_RANGE:
            <asp:Label ID="ACADEMIC_YEAR_RANGELabel" runat="server" Text='<%# Bind("ACADEMIC_YEAR_RANGE") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>

    <asp:Label ID="lbl_newgraduation" runat="server" Font-Bold="True" Font-Size="X-Small" ForeColor="#FF3300"></asp:Label>

</asp:Content>

