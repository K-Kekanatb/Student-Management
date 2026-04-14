<%-- 
    Document   : findStudent
    Created on : 22 Jul 2025, 9:30:50 PM
    Author     : khuts
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Find Student Page</title>
    </head>
    <body>
        <h1>Find Student</h1>
        <p>
            Fill in the information below 
        </p>
        <form action="FindServlet" method="POST">
            <table>
                <tr>
                    <td>Student Number: </td>
                    <td><input type="text" name="studNum" required="" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Find" /></td>
                </tr>
            </table>
        </form>
    </body>
</html>
