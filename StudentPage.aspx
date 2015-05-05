<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="StudentPage.aspx.vb" Inherits="admin_StudentDetails" %>

<script runat="server">
    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        Dim val As String = Request.QueryString("SID")
        Dim url As String
        url = "/StudentAddEmp.aspx?Parameter=" & val
        Response.Redirect(url)
    End Sub
</script>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" SelectCommand="SELECT final_employee.emp_name, [dbo.final_graduation].GID AS Expr1, [dbo.final_graduation].SHORT_DESCR, final_student.SID, final_student.last_name, final_student.first_name, final_student.phone, final_student.email, final_student.major, final_student.address1, final_student.address2, final_student.city, final_student.state, final_student.EID, final_student.salary, final_student.job_title, final_student.job_location, final_student.GID, final_student.comments, final_student.last_contact 
FROM [dbo.final_graduation] INNER JOIN final_student ON [dbo.final_graduation].GID = final_student.GID INNER JOIN final_employee ON final_student.EID = final_employee.EID 
WHERE ([SID] = @SID)" UpdateCommand="UPDATE [final_student] 
SET [last_name] = @last_name, [first_name] = @first_name, [phone] = @phone, [email] = @email,  [major] = @major, [eid] = @eid, [address1] = @address1, [address2] = @address2, [city] = @city, [state] = @state, [salary] = @salary, [job_title] = @job_title, [job_location] = @job_location WHERE [SID] = @SID
">
        <SelectParameters>
            <asp:QueryStringParameter Name="SID" QueryStringField="SID" Type="Int32" />
        </SelectParameters>
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
            <asp:QueryStringParameter Name="SID" QueryStringField="SID" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
              <table class="table">
                <tr>
                    <th class="tg-031e">Employer Name</th>
                    <th class="tg-031e">
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="emp_name" DataValueField="EID" SelectedValue='<%# Bind("EID") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" SelectCommand="SELECT [EID], [emp_name] FROM [final_employee]"></asp:SqlDataSource>
                    </th>
                 <th class="tg-031e"><asp:Button ID="Button1" runat="server" Text="Add Employer" OnClick="Button1_Click" /></th>
                </tr>
                <tr>
                    <th class="tg-031e">Last Name</th>
                    <th class="tg-031e"><asp:TextBox ID="last_nameTextBox" runat="server" Text='<%# Bind("last_name") %>' /></th>
                </tr>
                <tr>
                    <th class="tg-031e">First Name</th>
                    <th class="tg-031e"><asp:TextBox ID="first_nameTextBox" runat="server" Text='<%# Bind("first_name") %>' /></th>
                </tr>
                <tr>
                    <th class="tg-031e">Phone Number</th>
                    <th class="tg-031e"><asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' /></th>
                </tr>
                <tr>
                    <th class="tg-031e">Email</th>
                    <th class="tg-031e"><asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' /></th>
                </tr>
                <tr>
                    <th class="tg-031e">Major</th>
                    <th class="tg-031e"> <asp:TextBox ID="majorTextBox" runat="server" Text='<%# Bind("major") %>' /></th>
                </tr>
                <tr>
                    <th class="tg-031e">Address 1</th>
                    <th class="tg-031e"><asp:TextBox ID="address1TextBox" runat="server" Text='<%# Bind("address1") %>' /></th>
                </tr>
                <tr>
                    <th class="tg-031e">Address 2</th>
                    <th class="tg-031e"><asp:TextBox ID="address2TextBox" runat="server" Text='<%# Bind("address2") %>' /></th>
                </tr>
                <tr>
                    <th class="tg-031e">City</th>
                    <th class="tg-031e"><asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' /></th>
                </tr>
                <tr>
                    <th class="tg-031e">State</th>
                    <th class="tg-031e"><asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>' /></th>
                </tr>
                <tr>
                    <th class="tg-031e">Salary</th>
                    <th class="tg-031e"><asp:TextBox ID="salaryTextBox" runat="server" Text='<%# Bind("salary") %>' /></th>
                </tr>
                <tr>
                    <th class="tg-031e">Job Title</th>
                    <th class="tg-031e"><asp:TextBox ID="job_titleTextBox" runat="server" Text='<%# Bind("job_title") %>' /></th>
                </tr>
                <tr>
                    <th class="tg-031e">Job Location</th>
                    <th class="tg-031e"><asp:TextBox ID="job_locationTextBox" runat="server" Text='<%# Bind("job_location") %>' /></th>
                </tr>
                <tr>
                    <th class="tg-031e"><asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" /></th>
                    <th class="tg-031e"><asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" /></th>
                </tr>

            
            </table>
            
        </EditItemTemplate>
        
        <ItemTemplate>
            <table class="table">
                <tr>
                    <th class="tg-031e">Employer Name</th>
                    <th class="tg-031e"><asp:Label ID="emp_nameLabel" runat="server" Text='<%# Bind("emp_name")%>' /></th>
                </tr>

                <tr>
                    <th class="tg-031e">Last Name</th>
                    <th class="tg-031e"><asp:Label ID="last_nameLabel" runat="server" Text='<%# Bind("last_name") %>' /></th>
                </tr>
                <tr>
                    <th class="tg-031e">First Name</th>
                    <th class="tg-031e"><asp:Label ID="first_nameLabel" runat="server" Text='<%# Bind("first_name") %>' /></th>
                </tr>
                <tr>
                    <th class="tg-031e">Phone Number</th>
                    <th class="tg-031e"><asp:Label ID="Label2" runat="server" Text='<%# Bind("phone") %>' /></th>
                </tr>
                <tr>
                    <th class="tg-031e">Email</th>
                    <th class="tg-031e"><asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' /></th>
                </tr>
                <tr>
                    <th class="tg-031e">Major</th>
                    <th class="tg-031e"><asp:Label ID="majorLabel" runat="server" Text='<%# Bind("major") %>' /></th>
                </tr>
                <tr>
                    <th class="tg-031e">Address 1</th>
                    <th class="tg-031e"><asp:Label ID="address1Label" runat="server" Text='<%# Bind("address1") %>' /></th>
                </tr>
                <tr>
                    <th class="tg-031e">Address 2</th>
                    <th class="tg-031e"><asp:Label ID="address2Label" runat="server" Text='<%# Bind("address2") %>' /></th>
                </tr>
                <tr>
                    <th class="tg-031e">City</th>
                    <th class="tg-031e"><asp:Label ID="cityLabel" runat="server" Text='<%# Bind("city") %>' /></th>
                </tr>
                <tr>
                    <th class="tg-031e">State</th>
                    <th class="tg-031e"><asp:Label ID="stateLabel" runat="server" Text='<%# Bind("state") %>' /></th>
                </tr>
                <tr>
                    <th class="tg-031e">Salary</th>
                    <th class="tg-031e"><asp:Label ID="salaryLabel" runat="server" Text='<%# Bind("salary") %>' /></th>
                </tr>
                <tr>
                    <th class="tg-031e">Job Title</th>
                    <th class="tg-031e"><asp:Label ID="job_titleLabel" runat="server" Text='<%# Bind("job_title") %>' /></th>
                </tr>
                <tr>
                    <th class="tg-031e">Job Location</th>
                    <th class="tg-031e"><asp:Label ID="Label3" runat="server" Text='<%# Bind("job_location") %>' /></th>
                </tr>
                <tr>
                    <th class="tg-031e"></th>
                    <th class="tg-031e"><asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" /></th>
                </tr>

            
            </table>
        </ItemTemplate>

    </asp:FormView>
    <br />
    
    
</asp:Content>