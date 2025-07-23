<%-- 
    Document   : addStudent
    Created on : 22 Jul 2025, 9:30:29 PM
    Author     : khuts
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Student Page</title>
    </head>
    <body>
        <h1>Add Student</h1>
        <p>
            Please fill in the information below to add student to the class list
        </p>
        <form action="AddStudentServlet" method="POST">
            <table>
                <tr>
                    <td>Student Name: </td>
                    <td><input type="text" name="name" required="" /></td>
                </tr>
                <tr>
                    <td>Age: </td>
                    <td><input type="text" name="age" required="" /></td>
                </tr>
                <tr>
                    <td>Student Number: </td>
                    <td><input type="text" name="studNumber" required="" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="ADD" /></td>
                </tr>
            </table>
        </form> 
    </body>
</html>
