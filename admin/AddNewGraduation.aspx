

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
    <div class="row">
        <div class="col-lg-12">
    <asp:FormView ID="FormView2" runat="server" DataKeyNames="GID" DataSourceID="SqlDataSource1" DefaultMode="Insert">
        <InsertItemTemplate>
            <formview class="form-control dl-horizontal">
                <div class="form-group">
                    <label for="GIDTextBox" class="col-sm2 control-label">Graduation ID: </label>
                    <input type="text" class="form-control" id="GID" placeholder="GID" />
                    <asp:TextBox ID="GIDTextBox" runat="server" Text='<%# Bind("GID") %>' />
                </div>
                <div class="form-group">
                    <label for="SHORT_DESCRTextBox" class="col-sm2 control-label">Short Description: </label>
                    <input type="text" class="form-control" id="GID" placeholder="GID" />
                      <asp:TextBox ID="SHORT_DESCRTextBox" runat="server" Text='<%# Bind("SHORT_DESCR") %>' />
                </div>
                <div class="form-group">
                    <label for="LONG_DESCRTextBox" class="col-sm2 control-label">Long Description: </label>
                    <input type="text" class="form-control" id="GID" placeholder="GID" />
                      <asp:TextBox ID="LONG_DESCRTextBox" runat="server" Text='<%# Bind("LONG_DESCR") %>' />
                </div>
                <div class="form-group">
                    <label for="ACADEMIC_YEAR_RANGETextBox" class="col-sm2 control-label">Academic Year Range: </label>
                    <input type="text" class="form-control" id="GID" placeholder="GID" />
                      <asp:TextBox ID="ACADEMIC_YEAR_RANGETextBox" runat="server" Text='<%# Bind("ACADEMIC_YEAR_RANGE") %>' />
                </div>
                <div class="form-group">
                    <asp:Button ID="ButtonInsert" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="ButtonCancel" runat="server" CausesValidation="True" CommandName="Insert" Text="Cacnel" />
                </div>
            </formview>
        </InsertItemTemplate>
    </asp:FormView>
            </div>
        </div>
    <br />
    <br />

    <asp:Label ID="lbl_newgraduation" runat="server" Font-Bold="True" Font-Size="X-Small" ForeColor="#FF3300"></asp:Label>

</asp:Content>

