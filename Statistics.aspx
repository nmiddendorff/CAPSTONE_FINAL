<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Statistics.aspx.vb" Inherits="admin_Statistics" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
    # of total employers:&nbsp;<span class="badge badge-success"><asp:Label ID="lbl_employercount" runat="server"></asp:Label></span>&nbsp;&nbsp;<br />
<%--    average student salary:&nbsp;&nbsp;<span class="badge badge-success">$<asp:Label ID="lbl_salarycount" runat="server" Text="Label"></asp:Label></span>--%>
    

    <h3>Please select the graduation classes you would like to compare:          </h3> 

    <table class="table">
                    <tr>
    <th class="tg-031e"><h4>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="SHORT_DESCR" DataValueField="GID">
        </asp:DropDownList>
        &nbsp;
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" SelectCommand="SELECT [GID], [SHORT_DESCR] FROM [dbo.final_graduation]"></asp:SqlDataSource>
        </h4></th>
<th class="tg-031e"><h4>
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="SHORT_DESCR" DataValueField="GID">
        </asp:DropDownList> 
    &nbsp; 
    <asp:Button ID="Button1" runat="server" Text="Filter" Width="69px" />
        &nbsp;
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" SelectCommand="SELECT [GID], [SHORT_DESCR] FROM [dbo.final_graduation]"></asp:SqlDataSource>
        </h4></th>

    
                        </tr>
        <tr>
    <th class="tg-031e"><asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Visible="False">
        <Columns>
            <asp:BoundField DataField="Income Range" HeaderText="Income Range" SortExpression="Income Range" />
            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" ReadOnly="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" SelectCommand="SELECT [SID], [last_name], [first_name], [email], [GID] FROM [final_student] WHERE ([GID] = @GID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="GID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" SelectCommand="SELECT i.income_range as [Income Range], COUNT(*) AS Total
FROM final_student AS s INNER JOIN final_income AS i ON s.salary = i.IID 
WHERE s.GID = @GID1
GROUP BY i.income_range, s.GID 
ORDER BY Total DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="GID1" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    </th>
            <th class="tg-031e"><asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource10" Visible="False">
        <Columns>
            <asp:BoundField DataField="Income Range" HeaderText="Income Range" SortExpression="Income Range" />
            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" ReadOnly="True" />
        </Columns>
    </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" SelectCommand="SELECT i.income_range as [Income Range], COUNT(*) AS Total
FROM final_student AS s INNER JOIN final_income AS i ON s.salary = i.IID 
WHERE s.GID = @GID2
GROUP BY i.income_range, s.GID 
ORDER BY Total DESC">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList2" Name="GID2" PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" SelectCommand="SELECT [SID], [last_name], [first_name], [email], [GID] FROM [final_student] WHERE ([GID] = @GID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="GID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    </th>

            </tr>
        <tr>
            <th class="tg-031e">
                # of students:&nbsp;&nbsp;<span class="badge badge-success"><asp:Label ID="lbl_studentcount1" runat="server"></asp:Label></span>&nbsp;<br />
            </th>
            <th class="tg-031e">
                # of students:&nbsp;&nbsp;<span class="badge badge-success"><asp:Label ID="lbl_studentcount2" runat="server"></asp:Label></span>&nbsp;<br />
            </th>
        </tr>
        <tr>
            <th class="tg-031e">
                <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" Visible="False">
        <Columns>
            <asp:BoundField DataField="Major" HeaderText="Major" SortExpression="Major" />
            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" ReadOnly="True" />
        </Columns>
    </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" SelectCommand="   SELECT major as [Major], Count(*) as Total
	FROM final_student 
	Where GID = @GID1
	Group by major
	Order by COUNT(*) desc">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="GID1" PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </th>
            <th class="tg-031e">
                <asp:GridView ID="GridView4" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource7" Visible="False">
        <Columns>
            <asp:BoundField DataField="Major" HeaderText="Major" SortExpression="Major" />
            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" ReadOnly="True" />
        </Columns>
    </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" SelectCommand="   SELECT major as [Major], Count(*) as Total
	FROM final_student 
	Where GID = @GID2
	Group by major
	Order by COUNT(*) desc">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList2" Name="GID2" PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </th>
        </tr>
        <tr>
            <th class="tg-031e">
                31
            </th>
            <th class="tg-031e">
                32
            </th>
        </tr>
        <tr>
            <th class="tg-031e">
                41
            </th>
            <th class="tg-031e">
                42
            </th>
        </tr>
        <tr>
            <th class="tg-031e">
                51
            </th>
            <th class="tg-031e">
                52
            </th>
        </tr>
        </table>




</asp:Content>

