<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Statistics.aspx.vb" Inherits="admin_Statistics" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
<%--    # of total employers:&nbsp;<span class="badge badge-success"><asp:Label ID="lbl_employercount" runat="server"></asp:Label></span>&nbsp;&nbsp;<br />--%>
<%--    average student salary:&nbsp;&nbsp;<span class="badge badge-success">$<asp:Label ID="lbl_salarycount" runat="server" Text="Label"></asp:Label></span>--%>
    

    <h3>Please select the graduation classes you would like to compare:</h3>     
    <asp:Button ID="Button1" runat="server" Text="Filter" Width="20%" />


    <br />


    <br />


    <table class="table" border="1" style="border-style: none; text-align: center; vertical-align: middle">
                    <tr style="background-color: #C0C0C0">
    <th class="tg-031e" style="height: 90px; text-align: center;"><h4>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="SHORT_DESCR" DataValueField="GID" Width="70%">
        </asp:DropDownList>
        &nbsp;
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" SelectCommand="SELECT [GID], [SHORT_DESCR] FROM [dbo.final_graduation]"></asp:SqlDataSource>
        </h4></th>
 <th class="tg-031e" style="height: 90px"></th>
<th class="tg-031e" style="height: 90px; text-align: center;"><h4>
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="SHORT_DESCR" DataValueField="GID" Width="70%">
        </asp:DropDownList> 
    &nbsp; 
        &nbsp;
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:db_studentrecords %>" SelectCommand="SELECT [GID], [SHORT_DESCR] FROM [dbo.final_graduation]"></asp:SqlDataSource>
        </h4></th>

    
                        </tr>
        <tr>
    <th class="tg-031e"><asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Visible="False" CellPadding="1" CellSpacing="10" HorizontalAlign="Center" Width="80%">
        <Columns>
            <asp:BoundField DataField="Income Range" HeaderText="Income Range" SortExpression="Income Range" />
            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" ReadOnly="True" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
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
            <th class="tg-031e" style="text-align: center; vertical-align: middle;" dir="rtl">
                Salary<br />Count </th>
            <th class="tg-031e"><asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource10" Visible="False" CellPadding="1" CellSpacing="10" HorizontalAlign="Center" Width="80%">
        <Columns>
            <asp:BoundField DataField="Income Range" HeaderText="Income Range" SortExpression="Income Range" />
            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" ReadOnly="True" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
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
            <th class="tg-031e" style="text-align: center; vertical-align: middle; font-weight: bold;">
                &nbsp;<h1><%--<span class="badge badge-success">--%><asp:Label ID="lbl_studentcount1" runat="server" Height="100%" Width="40%"  Font-Bold="True"></asp:Label></h1><%--</span>--%>&nbsp;<br />
            </th>
            <th class="tg-031e" style="vertical-align: middle; text-align: center">Number<br />
                of<br />
                Students</th>
            <th class="tg-031e" style="text-align: center; vertical-align: middle; font-weight: bold;">
                &nbsp;&nbsp;<h1><%--<span class="badge badge-success">--%><asp:Label ID="lbl_studentcount2" runat="server" Height="100%" Width="40%" Font-Bold="True"></asp:Label><%--</span>--%></h1>&nbsp;<br />
            </th>
        </tr>
        <tr>
            <th class="tg-031e">
                <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" Visible="False" CellSpacing="10" HorizontalAlign="Center" Width="80%">
        <Columns>
            <asp:BoundField DataField="Major" HeaderText="Major" SortExpression="Major" />
            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" ReadOnly="True" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
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
            <th class="tg-031e" style="vertical-align: middle; text-align: center">Major<br />
                Count</th>
            <th class="tg-031e">
                <asp:GridView ID="GridView4" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource7" Visible="False" CellSpacing="10" HorizontalAlign="Center" Width="80%">
        <Columns>
            <asp:BoundField DataField="Major" HeaderText="Major" SortExpression="Major" />
            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" ReadOnly="True" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
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
            <th class="tg-031e" style="text-align: center; vertical-align: middle; font-weight: bold;">
                                &nbsp;<h1><%--<span class="badge badge-success">--%><asp:Label ID="Label1" runat="server" Height="100%" Width="40%"  Font-Bold="True"></asp:Label></h1><%--</span>--%>&nbsp;<br />

            </th>
            <th class="tg-031e" style="vertical-align: middle; text-align: center">%
                of
                <br />
                Alumni
                <br />
                in<br />
                Iowa</th>
            <th class="tg-031e" style="text-align: center; vertical-align: middle; font-weight: bold;">
                                &nbsp;<h1><%--<span class="badge badge-success">--%><asp:Label ID="Label2" runat="server" Height="100%" Width="40%"  Font-Bold="True"></asp:Label></h1><%--</span>--%>&nbsp;<br />

            </th>
        </tr>
        <tr>
            <th class="tg-031e" style="text-align: center; vertical-align: middle; font-weight: bold;">
                                                &nbsp;<h1><%--<span class="badge badge-success">--%><asp:Label ID="Label3" runat="server" Height="100%" Width="40%"  Font-Bold="True"></asp:Label></h1><%--</span>--%>&nbsp;<br />
            </th>
           <th class="tg-031e" style="vertical-align: middle; text-align: center">%
                of
                <br />
                Alumni
                <br />
                in<br />
                Illinois</th>
            <th class="tg-031e" style="text-align: center; vertical-align: middle; font-weight: bold;">
                                                &nbsp;<h1><%--<span class="badge badge-success">--%><asp:Label ID="Label4" runat="server" Height="100%" Width="40%"  Font-Bold="True"></asp:Label></h1><%--</span>--%>&nbsp;<br />
            </th>
        </tr>
        <%--<tr>
            <th class="tg-031e">
                51
            </th>
            <th class="tg-031e">11111</th>
            <th class="tg-031e">
                52
            </th>
        </tr>--%>
        </table>




</asp:Content>

