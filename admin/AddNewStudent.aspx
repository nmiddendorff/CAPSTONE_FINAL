<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="AddNewStudent.aspx.vb" Inherits="AddNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" DeleteCommand="DELETE FROM [final_student] WHERE [SID] = @SID" InsertCommand="INSERT INTO [final_student] ([last_name], [first_name], [phone], [email], [major], [major2], [address1], [address2], [city], [state], [EID], [salary], [job_title], [job_location], [GID]) VALUES (@last_name, @first_name, @phone, @email, @major, @major2, @address1, @address2, @city, @state, @EID, @salary, @job_title, @job_location, @GID)" SelectCommand="SELECT * FROM [final_student]" UpdateCommand="UPDATE [final_student] SET [last_name] = @last_name, [first_name] = @first_name, [phone] = @phone, [email] = @email, [major] = @major, [major2] = @major2, [address1] = @address1, [address2] = @address2, [city] = @city, [state] = @state, [EID] = @EID, [salary] = @salary, [job_title] = @job_title, [job_location] = @job_location, [GID] = @GID WHERE [SID] = @SID">
        <DeleteParameters>
            <asp:Parameter Name="SID" Type="Int32" />
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
            <asp:Parameter Name="SID" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="SID" DataSourceID="SqlDataSource1" DefaultMode="Insert">
        <EditItemTemplate>
             <table class="table">
                 <tr>
            <th class="tg-031e">SID:</th>
            <th class="tg-031e"><asp:Label ID="SIDLabel1" runat="server" Text='<%# Eval("SID") %>' /></th>
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
            <th class="tg-031e">
                <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource9" DataTextField="major" DataValueField="major" SelectedValue='<%# Bind("major")%>'>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" SelectCommand="SELECT * FROM [final_major]"></asp:SqlDataSource>
                     </th>
            </tr>
                 <tr>
            <th class="tg-031e">Major 2:</th>
            <th class="tg-031e">
                <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="SqlDataSource10" DataTextField="major" DataValueField="major" SelectedValue='<%# Bind("major2")%>'>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" SelectCommand="SELECT * FROM [final_major]"></asp:SqlDataSource>
                     </th>
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
                 <caption>
                     &lt;</tr>
                     <tr>
                         <th class="tg-031e">State:</th>
                         <th class="tg-031e">
                             <asp:DropDownList ID="DropDownList11" runat="server" DataSourceID="SqlDataSource13" DataTextField="state" DataValueField="state" SelectedValue='<%# Bind("state")%>'>
                             </asp:DropDownList>
                             <asp:SqlDataSource ID="SqlDataSource13" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" SelectCommand="SELECT * FROM [final_states]"></asp:SqlDataSource>
                         </th>
                         <tr>
                             <th class="tg-031e">Employer:</th>
                             <th class="tg-031e">
                                 <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource8" DataTextField="emp_name" DataValueField="EID" SelectedValue='<%# Bind("EID")%>'>
                                 </asp:DropDownList>
                                 <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" SelectCommand="SELECT [EID], [emp_name] FROM [final_employee]"></asp:SqlDataSource>
                             </th>
                         </tr>
                         <tr>
                             <th class="tg-031e">Salary:</th>
                             <th class="tg-031e">
                                 <asp:DropDownList ID="DropDownList13" runat="server" DataSourceID="SqlDataSource15" DataTextField="income_range" DataValueField="IID" SelectedValue='<%# Bind("salary")%>'>
                                 </asp:DropDownList>
                                 <asp:SqlDataSource ID="SqlDataSource15" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" SelectCommand="SELECT * FROM [final_income]"></asp:SqlDataSource>
                             </th>
                         </tr>
                         <tr>
                             <th class="tg-031e">Job Title:</th>
                             <th class="tg-031e">
                                 <asp:TextBox ID="job_titleTextBox" runat="server" Text='<%# Bind("job_title") %>' />
                             </th>
                         </tr>
                         <tr>
                             <th class="tg-031e">Job Location:</th>
                             <th class="tg-031e">
                                 <asp:TextBox ID="job_locationTextBox" runat="server" Text='<%# Bind("job_location") %>' />
                             </th>
                         </tr>
                         <tr>
                             <th class="tg-031e">Graduated:</th>
                             <th class="tg-031e">
                                 <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource7" DataTextField="SHORT_DESCR" DataValueField="GID" SelectedValue='<%# Bind("GID") %>'>
                                 </asp:DropDownList>
                                 <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" SelectCommand="SELECT [GID], [SHORT_DESCR] FROM [dbo.final_graduation]"></asp:SqlDataSource>
                             </th>
                             <caption>
                                 &lt;</caption>
                         </tr>
                         <tr>
                             <th class="tg-031e">Comments:</th>
                             <th class="tg-031e">
                                 <asp:TextBox ID="commentsTextBox" runat="server" Text='<%# Bind("comments") %>' />
                             </th>
                         </tr>
                         <tr>
                             <th class="tg-031e">Last Contacted:</th>
                             <th class="tg-031e">
                                 <asp:TextBox ID="last_contactTextBox" runat="server" Text='<%# Bind("last_contact") %>' />
                             </th>
                         </tr>
                         <tr>
                             <th class="tg-031e">
                                 <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                             </th>
                             <caption>
                                 &nbsp;<tr>
                                     <th class="tg-031e">
                                         <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                     </th>
                                 </tr>
                             </caption>
                         </tr>
                     </tr>
                 </caption>
                     </table>
                 </EditItemTemplate>
        <InsertItemTemplate>
            <table class="table">
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
            <th class="tg-031e">
                <asp:DropDownList ID="DropDownList7" runat="server" DataSourceID="SqlDataSource11" DataTextField="major" DataValueField="major" SelectedValue='<%# Bind("major")%>'>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" SelectCommand="SELECT * FROM [final_major]"></asp:SqlDataSource>
                     </th>
            </tr>
                <tr>
            <th class="tg-031e">Major 2:</th>
            <th class="tg-031e">
                <asp:DropDownList ID="DropDownList10" runat="server" DataSourceID="SqlDataSource12" DataTextField="major" DataValueField="major" SelectedValue='<%# Bind("major2")%>'></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" SelectCommand="SELECT * FROM [final_major]"></asp:SqlDataSource>
            </th>
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
            <th class="tg-031e">
                <asp:DropDownList ID="DropDownList12" runat="server" DataSourceID="SqlDataSource14" DataTextField="state" DataValueField="state" SelectedValue='<%# Bind("state")%>'>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource14" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" SelectCommand="SELECT * FROM [final_states]"></asp:SqlDataSource>
                     </th>
            </tr>
                 <tr>
            <th class="tg-031e">Employer:</th>
            <th class="tg-031e"><asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource6" DataTextField="emp_name" DataValueField="EID" Height="16px" SelectedValue='<%# Bind("EID")%>'>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" SelectCommand="SELECT [EID], [emp_name] FROM [final_employee]"></asp:SqlDataSource></th>
            </tr>
                 <tr>
            <th class="tg-031e">Salary:</th>
            <th class="tg-031e">
                <asp:DropDownList ID="DropDownList14" runat="server" DataSourceID="SqlDataSource16" DataTextField="income_range" DataValueField="IID" SelectedValue='<%# Bind("salary")%>'>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource16" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" SelectCommand="SELECT * FROM [final_income]"></asp:SqlDataSource>
                     </th>
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
            <th class="tg-031e"><asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource5" DataTextField="SHORT_DESCR" DataValueField="GID" SelectedValue='<%# Bind("GID")%>'>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" SelectCommand="SELECT [SHORT_DESCR], [GID] FROM [dbo.final_graduation]"></asp:SqlDataSource></th>
            </tr>
                 <tr>
            <th class="tg-031e">Comments:</th>
            <th class="tg-031e"><asp:TextBox ID="commentsTextBox" runat="server" Text='<%# Bind("comments") %>' /></th>
            </tr>
                 <tr>
            <th class="tg-031e">Last Contacted:</th>
            <th class="tg-031e"><asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("last_contact")%>'></asp:TextBox></th>
            </tr>
                 <tr>
            <th class="tg-031e"><asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" /></th>
        </tr>
                     <caption>
                         &nbsp;<tr>
                             <th class="tg-031e">
                                 <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                             </th>
                         </tr>
                </caption>
                     </table>
                </InsertItemTemplate>
        <ItemTemplate>
            <table class="table">
                <tr>
            <th class="tg-031e">SID:</th>
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
            <th class="tg-031e"><asp:Label ID="majorLabel" runat="server" Text='<%# Bind("major") %>' />
            </th>
            </tr>
                <tr>
            <th class="tg-031e">Major 2:</th>
            <th class="tg-031e"><asp:Label ID="major2Label" runat="server" Text='<%# Bind("major2")%>' />
            </th>
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
            <th class="tg-031e"><asp:Label ID="EIDLabel" runat="server" Text='<%# Bind("EID") %>' /></th>
            </tr>
                 <tr>
            <th class="tg-031e">Salary:</th>
            <th class="tg-031e"><asp:Label ID="salaryLabel" runat="server" Text='<%# Bind("salary") %>' /></th>
            </tr>
                 <tr>
            <th class="tg-031e">Job Title:</th>
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
            <th class="tg-031e">Last Contacted:</th>
            <th class="tg-031e"><asp:Label ID="last_contactLabel" runat="server" Text='<%# Bind("last_contact") %>' /></th>
            </tr>
                 <tr>
            <th class="tg-031e"><asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" /></th>
        </tr>
                     <caption>
                         &nbsp;<tr>
                             <th class="tg-031e">
                                 <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                             </th>
                             <caption>
                                 &nbsp;<tr>
                                     <th class="tg-031e">
                                         <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                                     </th>
                                 </tr>
                             </caption>
                         </tr>
                </caption>
                     </table>
                </ItemTemplate>
</asp:FormView>

    <asp:Label ID="lbl_newstudent" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    </asp:Content>

