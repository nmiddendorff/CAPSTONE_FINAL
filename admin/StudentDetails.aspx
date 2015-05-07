<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="StudentDetails.aspx.vb" Inherits="admin_StudentDetails" %>

<%--<script runat="server">

    'Protected Sub ImageButton1_Click(sender As Object, e As EventArgs)
    '    If Me.FormView1.FindControl("Calendar1").Visible = False Then
    '        Me.FormView1.FindControl("Calendar1").Visible = True
    '    End If
        
    '    Me.FormView1.FindControl("Calendar1").Visible = True
    'End Sub
    'Protected Sub Calendar1_SelectionChanged(sender As Object, e As EventArgs)
    '    Me.FormView1.FindControl("last_contactTB") = 
        
    '    If Me.FormView1.FindControl("last_contactTB").Visible = False Then
    '        MsgBox(Me.FormView1.FindControl("last_contactTB"))
    '    End If
        
    'End Sub
</script>--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" DeleteCommand="DELETE FROM [final_student] WHERE [SID] = @SID" InsertCommand="INSERT INTO [final_student] ([last_name], [first_name], [phone], [email], [major], [major2], [address1], [address2], [city], [state], [EID], [salary], [job_title], [job_location], [GID]) VALUES (@last_name, @first_name, @phone, @email, @major, @major2, @address1, @address2, @city, @state, @EID, @salary, @job_title, @job_location, @GID)" SelectCommand="SELECT final_employee.emp_name, [dbo.final_graduation].GID AS Expr1, [dbo.final_graduation].SHORT_DESCR, final_student.SID, final_student.last_name, final_student.first_name, final_student.phone, final_student.email, final_student.major, final_student.major2, final_student.address1, final_student.address2, final_student.city, final_student.state, final_student.EID, final_student.salary, final_student.job_title, final_student.job_location, final_student.GID, final_student.comments, final_student.last_contact 
FROM [dbo.final_graduation] INNER JOIN final_student ON [dbo.final_graduation].GID = final_student.GID INNER JOIN final_employee ON final_student.EID = final_employee.EID 
WHERE ([SID] = @SID)" UpdateCommand="UPDATE [final_student] 
SET [last_name] = @last_name, [first_name] = @first_name, [phone] = @phone, [email] = @email, [major] = @major, [major2] = @major2, [address1] = @address1, [address2] = @address2, [city] = @city, [state] = @state, [EID] = @EID, [salary] = @salary, [job_title] = @job_title, [job_location] = @job_location, [GID] = @GID, [comments] = @comments, [last_contact] = @last_contact  WHERE [SID] = @SID
">
        <DeleteParameters>
            <asp:QueryStringParameter Name="SID" QueryStringField="SID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="last_name" Type="String" />
            <asp:Parameter Name="first_name" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="major" Type="String" />
            <asp:Parameter Name="major2" Type="String" />
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
        <SelectParameters>
            <asp:QueryStringParameter Name="SID" QueryStringField="SID" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="last_name" Type="String" />
            <asp:Parameter Name="first_name" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="major" Type="String" />
            <asp:Parameter Name="major2" Type="String" />
            <asp:Parameter Name="address1" Type="String" />
            <asp:Parameter Name="address2" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="EID" Type="Int32" />
            <asp:Parameter Name="salary" Type="Int32" />
            <asp:Parameter Name="job_title" Type="String" />
            <asp:Parameter Name="job_location" Type="String" />
            <asp:Parameter Name="GID" Type="Int32" />
            <asp:Parameter Name="comments" Type="String" />
            <asp:Parameter Name="last_contact" Type="datetime" />
            <asp:QueryStringParameter Name="SID" QueryStringField="SID" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            <table class="table">
                <tr>
            <th class="tg-031e">Student ID:</th>
            <th class="tg-031e"><asp:Label ID="SIDLabel1" runat="server" Text='<%# Eval("SID") %>' /></th>
                    <th class="tg-031e"></th>
            </tr>
                <tr>
            <th class="tg-031e">Last Name:</th>
            <th class="tg-031e"><asp:TextBox ID="last_nameTextBox" runat="server" Text='<%# Bind("last_name") %>' /></th>
                    <th class="tg-031e"></th>
            </tr>
                <tr>
            <th class="tg-031e">First Name:</th>
            <th class="tg-031e"><asp:TextBox ID="first_nameTextBox" runat="server" Text='<%# Bind("first_name") %>' /></th>
                    <th class="tg-031e"></th>
            </tr>
                <tr>
            <th class="tg-031e">Phone:</th>
            <th class="tg-031e"><asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' /></th>
                    <th class="tg-031e">(Ex. 999-999-9999)</th>
            </tr>
                <tr>
            <th class="tg-031e">Email:</th>
            <th class="tg-031e"><asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' /></th>
                    <th class="tg-031e"></th>
            </tr>
                <tr>
            <th class="tg-031e">Major:</th>
            <th class="tg-031e">
                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource4" DataTextField="major" DataValueField="major" SelectedValue='<%# Bind("major")%>'>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" SelectCommand="SELECT * FROM [final_major]"></asp:SqlDataSource>
                    </th>
                    <th class="tg-031e"></th>
            </tr>
                <tr>
            <th class="tg-031e">Major 2:</th>
            <th class="tg-031e">
                <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource5" DataTextField="major" DataValueField="major" SelectedValue='<%# Bind("major2")%>'>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" SelectCommand="SELECT * FROM [final_major]"></asp:SqlDataSource>
                    </th>
                    <th class="tg-031e"></th>
            </tr>
                <tr>
            <th class="tg-031e">Address 1:</th>
            <th class="tg-031e"><asp:TextBox ID="address1TextBox" runat="server" Text='<%# Bind("address1") %>' /></th>
                    <th class="tg-031e"></th>
            </tr>
                <tr>
            <th class="tg-031e">Address 2:</th>
            <th class="tg-031e"><asp:TextBox ID="address2TextBox" runat="server" Text='<%# Bind("address2") %>' /></th>
                    <th class="tg-031e"></th>
            </tr>
                <tr>
            <th class="tg-031e">City:</th>
            <th class="tg-031e"><asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' /></th>
                    <th class="tg-031e"></th>
            </tr>
                <tr>
            <th class="tg-031e">State:</th>
            <th class="tg-031e">
                <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="SqlDataSource7" DataTextField="state" DataValueField="state" SelectedValue='<%# Bind("state")%>'>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" SelectCommand="SELECT * FROM [final_states]"></asp:SqlDataSource>
                    </th>
                    <th class="tg-031e"></th>
            </tr>
                <tr>
            <th class="tg-031e">Employer:</th>
            <th class="tg-031e"><asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="emp_name" DataValueField="EID" SelectedValue='<%# Bind("EID")%>'>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" SelectCommand="SELECT [EID], [emp_name] FROM [final_employee]"></asp:SqlDataSource></th>
            <th class="tg-031e"></th>
                </tr>
                <tr>
            <th class="tg-031e">Salary:</th>
            <th class="tg-031e">
                <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource6" DataTextField="income_range" DataValueField="IID" SelectedValue='<%# Bind("salary")%>'>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" SelectCommand="SELECT * FROM [final_income]"></asp:SqlDataSource>
                    </th>
                    <th class="tg-031e"></th>
            </tr>
                <tr>
            <th class="tg-031e">Job Title:</th>
            <th class="tg-031e"><asp:TextBox ID="job_titleTextBox" runat="server" Text='<%# Bind("job_title") %>' /></th>
                    <th class="tg-031e">(Ex. 'Web Developer')</th>
            </tr>
                <tr>
            <th class="tg-031e">Job Location:</th>
            <th class="tg-031e"><asp:TextBox ID="job_locationTextBox" runat="server" Text='<%# Bind("job_location") %>' /></th>
                    <th class="tg-031e">(Your office location)</th>
            </tr>
                <tr>
            <th class="tg-031e">Graduated:</th>
            <th class="tg-031e"><asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="SHORT_DESCR" DataValueField="GID" SelectedValue='<%# Bind("GID") %>'>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" SelectCommand="SELECT [GID], [SHORT_DESCR] FROM [dbo.final_graduation]"></asp:SqlDataSource></th>
            <th class="tg-031e"></th>
                </tr>
                <tr>
            <th class="tg-031e">Comments:</th>
            <th class="tg-031e"><asp:TextBox ID="commentsTextBox" runat="server" Text='<%# Bind("comments") %>' /></th>
                    <th class="tg-031e"></th>
            </tr>
                <tr>
            <th class="tg-031e">Last Contact:</th>
            <th class="tg-031e"><asp:TextBox ID="last_contactTB" runat="server" Text='<%# Bind("last_contact")%>' />
                <asp:ImageButton ID="ImageButton1" runat="server" Height="20px" ImageUrl="~/images/calendar.png" OnClick="ImageButton1_Click" />
                <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False"  ></asp:Calendar>
                
                    </th>
                    <th class="tg-031e"></th>
            </tr>
                <tr>
                    <th class="tg-031e"><asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" /></th>
                    <th class="tg-031e"><asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" /></th>
                <th class="tg-031e"></th>
                </tr>
                </table>
        </EditItemTemplate>
        <InsertItemTemplate>
            <table class="table">
                <tr>
            <th class="tg-031e">Employer:</th>
            <th class="tg-031e"><asp:TextBox ID="emp_nameTextBox" runat="server" Text='<%# Bind("emp_name") %>' /></th>
            </tr>
                <tr>
            <th class="tg-031e">Last Name:</th>
            <th class="tg-031e"><asp:TextBox ID="last_nameTextBox" runat="server" Text='<%# Bind("last_name") %>' /></th>
            </tr>
                <tr>
            <th class="tg-031e">First Name:</th>
            <th class="tg-031e"><asp:TextBox ID="first_nameTextBox" runat="server" Text='<%# Bind("first_name") %>' /></th>
            </tr>
                <tr>
            <th class="tg-031e">Phone:</th>
            <th class="tg-031e"><asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' /></th>
            </tr>
                <tr>
            <th class="tg-031e">Email:</th>
            <th class="tg-031e"><asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' /></th>
            </tr>
                <tr>
            <th class="tg-031e">Major:</th>
            <th class="tg-031e"><asp:TextBox ID="majorTextBox" runat="server" Text='<%# Bind("major") %>' /></th>
            </tr>
                <tr>
            <th class="tg-031e">Major 2:</th>
            <th class="tg-031e"><asp:TextBox ID="major2TextBox" runat="server" Text='<%# Bind("major2")%>' /></th>
            </tr>
                <tr>
            <th class="tg-031e">Address 1:</th>
            <th class="tg-031e"><asp:TextBox ID="address1TextBox" runat="server" Text='<%# Bind("address1") %>' /></th>
            </tr>
                <tr>
            <th class="tg-031e">Address 2:</th>
            <th class="tg-031e"><asp:TextBox ID="address2TextBox" runat="server" Text='<%# Bind("address2") %>' /></th>
            </tr>
                <tr>
            <th class="tg-031e">City:</th>
            <th class="tg-031e"><asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' /></th>
            </tr>
                <tr>
            <th class="tg-031e">State:</th>
            <th class="tg-031e"><asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>' /></th>
            </tr>
                <tr>
            <th class="tg-031e">Employee ID:</th>
            <th class="tg-031e"><asp:TextBox ID="EIDTextBox" runat="server" Text='<%# Bind("EID") %>' /></th>
            </tr>
                <tr>
            <th class="tg-031e">Salary:</th>
            <th class="tg-031e"><asp:TextBox ID="salaryTextBox" runat="server" Text='<%# Bind("salary") %>' /></th>
            </tr>
                <tr>
            <th class="tg-031e">Job Title:</th>
            <th class="tg-031e"><asp:TextBox ID="job_titleTextBox" runat="server" Text='<%# Bind("job_title") %>' /></th>
            </tr>
                <tr>
            <th class="tg-031e">Job Location:</th>
            <th class="tg-031e"><asp:TextBox ID="job_locationTextBox" runat="server" Text='<%# Bind("job_location") %>' /></th>
            </tr>
                <tr>
            <th class="tg-031e">Graduated:</th>
            <th class="tg-031e"><asp:TextBox ID="GIDTextBox" runat="server" Text='<%# Bind("GID") %>' /></th>
            </tr>
                <tr>
            <th class="tg-031e">Comments:</th>
            <th class="tg-031e"><asp:TextBox ID="commentsTextBox" runat="server" Text='<%# Bind("comments") %>' /></th>
            </tr>
                <tr>
            <th class="tg-031e">Last Contact:</th>
            <th class="tg-031e"><asp:TextBox ID="last_contactTextBox" runat="server" Text='<%# Bind("last_contact") %>' /></th>
            </tr>
                <tr>
            <th class="tg-031e"><asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" /></th>
            &nbsp;<th class="tg-031e"><asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" /></th>
                </tr>
                </table>
        </InsertItemTemplate>
        <ItemTemplate>
            <table class="table">
                
                <tr>
            <th class="tg-031e">Student ID:</th>
            <th class="tg-031e"><asp:Label ID="SIDLabel" runat="server" Text='<%# Eval("SID") %>' /></th>
            </tr>
                <tr>
            <th class="tg-031e">Last Name:</th>
            <th class="tg-031e"><asp:Label ID="last_nameLabel" runat="server" Text='<%# Bind("last_name") %>' /></th>
            </tr>
                <tr>
            <th class="tg-031e">First Name:</th>
            <th class="tg-031e"><asp:Label ID="first_nameLabel" runat="server" Text='<%# Bind("first_name") %>' /></th>
            </tr>
                <tr>
            <th class="tg-031e">Phone:</th>
            <th class="tg-031e"><asp:Label ID="phoneLabel" runat="server" Text='<%# Bind("phone") %>' /></th>
            </tr>
                <tr>
            <th class="tg-031e">Email:</th>
            <th class="tg-031e"><asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' /></th>
            </tr>
                <tr>
            <th class="tg-031e">Major:</th>
            <th class="tg-031e"><asp:Label ID="majorLabel" runat="server" Text='<%# Bind("major") %>' /></th>
            </tr>
                <tr>
            <th class="tg-031e">Major 2:</th>
            <th class="tg-031e"><asp:Label ID="major2Label" runat="server" Text='<%# Bind("major2") %>' /></th>
            </tr>
                <tr>
            <th class="tg-031e">Address 1:</th>
            <th class="tg-031e"><asp:Label ID="address1Label" runat="server" Text='<%# Bind("address1") %>' /></th>
            </tr>
                <tr>
            <th class="tg-031e">Address 2:</th>
            <th class="tg-031e"><asp:Label ID="address2Label" runat="server" Text='<%# Bind("address2") %>' /></th>
            </tr>
                <tr>
            <th class="tg-031e">City:</th>
            <th class="tg-031e"><asp:Label ID="cityLabel" runat="server" Text='<%# Bind("city") %>' /></th>
            </tr>
                <tr>
            <th class="tg-031e">State:</th>
            <th class="tg-031e"><asp:Label ID="stateLabel" runat="server" Text='<%# Bind("state") %>' /></th>
            </tr>
                <tr>
            <th class="tg-031e">Employer:</th>
            <th class="tg-031e"><asp:Label ID="emp_nameLabel" runat="server" Text='<%# Bind("emp_name") %>' /></th>
            </tr>
                <tr>
            <th class="tg-031e">Salary:</th>
            <th class="tg-031e"><asp:Label ID="salaryLabel" runat="server" Text='<%# Bind("salary") %>' /></th>
            </tr>
                <tr>

            <th class="tg-031e">Job_ Title:</th>
            <th class="tg-031e"><asp:Label ID="job_titleLabel" runat="server" Text='<%# Bind("job_title") %>' /></th>
            </tr>
                <tr>
            <th class="tg-031e">Job Location:</th>
            <th class="tg-031e"><asp:Label ID="job_locationLabel" runat="server" Text='<%# Bind("job_location") %>' /></th>
            </tr>
                <tr>
            <th class="tg-031e">Graduated:</th>
            <th class="tg-031e"><asp:Label ID="GIDLabel" runat="server" Text='<%# Bind("GID") %>' /></th>
            </tr>
                <tr>
            <th class="tg-031e">Comments:</th>
            <th class="tg-031e"><asp:Label ID="commentsLabel" runat="server" Text='<%# Bind("comments") %>' /></th>
            </tr>
                <tr>
            <th class="tg-031e">Last Contact:</th>
            <th class="tg-031e"><asp:Label ID="last_contactLabel" runat="server" Text='<%# Bind("last_contact") %>' /></th>
            </tr>
                <tr>
            <th class="tg-031e"><asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" /></th>
            &nbsp;<th class="tg-031e"><asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" /></th>
            
                </tr>
                </table>
        </ItemTemplate>

    </asp:FormView>

    <br />
    <asp:Button ID="btnEmail" runat="server" Text="Email" />

    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>

    

</asp:Content>

