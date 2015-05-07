Imports System.Data
Imports System.Data.SqlClient

Partial Class admin_Statistics
    Inherits System.Web.UI.Page

    
    
    'Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
    '    Dim gid1 As String
    '    Dim gid2 As String
    '    Dim gid3 As String

    '    gid1 = DropDownList1.SelectedValue
    '    gid2 = DropDownList2.SelectedValue
    '    gid3 = DropDownList3.SelectedValue


    '    GridView1.Visible = True
    '    GridView2.Visible = True
    '    GridView3.Visible = True

    'End Sub


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        'Initiallizing Graduation Values
        Dim gid1 As String
        Dim gid2 As String

        gid1 = DropDownList1.SelectedValue
        gid2 = DropDownList2.SelectedValue

        'Creating Connection with database
        Dim connection As SqlConnection = New SqlConnection("Data Source=apollo.biz.uiowa.edu; Initial Catalog=studentrecords; Persist Security Info=True; User ID=studentrecordadmin; Password=IowaHawkeyes1!")


        '1. Comparing Salaries
        GridView1.Visible = True
        GridView2.Visible = True

        '2. Counting Students
        Dim cmd1 As New SqlCommand
        Dim returnValue1 As Object
        Dim sql1 As String
        sql1 = "SELECT COUNT(SID) FROM [final_student] WHERE GID =" & gid1
        cmd1.CommandText = sql1
        cmd1.CommandType = CommandType.Text
        cmd1.Connection = connection

        connection.Open()
        returnValue1 = cmd1.ExecuteScalar()
        connection.Close()

        lbl_studentcount1.Text = returnValue1
        '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
        Dim cmd2 As New SqlCommand
        Dim returnValue2 As Object
        Dim sql2 As String
        sql2 = "SELECT COUNT(SID) FROM [final_student] WHERE GID =" & gid2
        cmd2.CommandText = sql2
        cmd2.CommandType = CommandType.Text
        cmd2.Connection = connection

        connection.Open()
        returnValue2 = cmd2.ExecuteScalar()
        connection.Close()

        lbl_studentcount2.Text = returnValue2

        '3. Totaling Majors
        GridView3.Visible = True
        GridView4.Visible = True


        '4. Percent of Alumni in Iowa
        Dim cmd3 As New SqlCommand
        Dim returnValue3 As Object
        Dim sql3 As String
        sql3 = "SELECT COUNT(SID) FROM final_student WHERE State = 'IA' AND GID =" & gid1
        cmd3.CommandText = sql3
        cmd3.CommandType = CommandType.Text
        cmd3.Connection = connection

        connection.Open()
        returnValue3 = cmd3.ExecuteScalar()
        connection.Close()



        Label1.Text = String.Format("{0:n2}", ((returnValue3 / returnValue1) * 100)) & "%"
        '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
        Dim cmd4 As New SqlCommand
        Dim returnValue4 As Object
        Dim sql4 As String
        sql4 = "SELECT COUNT(SID) FROM final_student WHERE State = 'IA' AND GID =" & gid2
        cmd4.CommandText = sql4
        cmd4.CommandType = CommandType.Text
        cmd4.Connection = connection

        connection.Open()
        returnValue4 = cmd4.ExecuteScalar()
        connection.Close()

        Label2.Text = String.Format("{0:n2}", ((returnValue4 / returnValue2) * 100)) & "%"

        '4. Percent of Alumni in Illinois
        Dim cmd5 As New SqlCommand
        Dim returnValue5 As Object
        Dim sql5 As String
        sql5 = "SELECT COUNT(SID) FROM final_student WHERE State = 'IL' AND GID =" & gid1
        cmd5.CommandText = sql5
        cmd5.CommandType = CommandType.Text
        cmd5.Connection = connection

        connection.Open()
        returnValue5 = cmd5.ExecuteScalar()
        connection.Close()


        Label3.Text = String.Format("{0:n2}", ((returnValue5 / returnValue1) * 100)) & "%"
        '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
        Dim cmd6 As New SqlCommand
        Dim returnValue6 As Object
        Dim sql6 As String
        sql6 = "SELECT COUNT(SID) FROM final_student WHERE State = 'IL' AND GID =" & gid2
        cmd6.CommandText = sql6
        cmd6.CommandType = CommandType.Text
        cmd6.Connection = connection

        connection.Open()
        returnValue6 = cmd6.ExecuteScalar()
        connection.Close()

        Label4.Text = String.Format("{0:n2}", ((returnValue6 / returnValue2) * 100)) & "%"

        'Dim result1 As String
        'Dim result2 As String
        'Dim sqlConnection As New SqlConnection(ConfigurationManager.ConnectionStrings("db_studentrecords").ConnectionString)
        'Dim sqlCommand1 As New SqlCommand
        'Dim sqlCommand2 As New SqlCommand
        'sqlCommand1.Connection = sqlConnection
        'sqlCommand2.CommandText = "SELECT COUNT(SID) FROM [final_student] WHERE =" & gid1
        'sqlCommand1.Connection = sqlConnection
        'sqlCommand2.CommandText = "SELECT COUNT(SID) FROM [final_student] WHERE =" & gid2

        'sqlConnection.Open()
        'result1 = sqlCommand1.ExecuteScalar()
        'sqlConnection.Close()
        'sqlConnection.Open()
        'result2 = sqlCommand2.ExecuteScalar()
        'sqlConnection.Close()
        'lbl_studentcount1.Text = result1
        'lbl_studentcount2.Text = result2


        ''3. Counting Employers
        'Dim employercount As Integer
        'Dim empsqlConnection As New SqlConnection(ConfigurationManager.ConnectionStrings("db_studentrecords").ConnectionString)
        'Dim employersqlCommand As New SqlCommand
        'employersqlCommand.Connection = empsqlConnection
        'employersqlCommand.CommandText = "SELECT COUNT(emp_name) FROM [final_employee]"

        'empsqlConnection.Open()
        'employercount = employersqlCommand.ExecuteScalar()
        'empsqlConnection.Close()
        'lbl_employercount.Text = employercount.ToString

        ''Dim salarycount As Integer
        ''Dim salarysqlConnection As New SqlConnection(ConfigurationManager.ConnectionStrings("db_studentrecords").ConnectionString)
        ''Dim salarysqlCommand As New SqlCommand
        ''salarysqlCommand.Connection = salarysqlConnection
        ''salarysqlCommand.CommandText = " SELECT income_range, GID, Count(*) as Total FROM final_student s INNER JOIN final_income i ON s.salary=i.iid  Where s.GID = 20148 Group by income_range, GID Order by COUNT(*) desc"

        ''salarysqlConnection.Open()
        ''salarycount = salarysqlCommand.ExecuteScalar()
        ''salarysqlConnection.Close()
        'lbl_salarycount.Text = salarycount.ToString

    End Sub
End Class
