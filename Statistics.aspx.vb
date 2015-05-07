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
