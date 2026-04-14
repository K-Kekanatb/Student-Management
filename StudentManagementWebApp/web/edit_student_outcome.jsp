<%-- 
    Document   : edit_student_outcome
    Created on : 26 Jul 2025, 10:18:59 PM
    Author     : khuts
--%>

<%@page import="za.ac.tut.entity.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Student Outcome Page</title>
    </head>
    <body>
        <h1>Edit Student</h1>
        <p>
            Edit the student's details 
        </p>
        <%
         Student st = (Student)request.getAttribute("os");
         String name = st.getName();
         Integer age = st.getAge();
         Integer num = st.getStudNumber();
        %>
        <form action="EditFinalServlet" method="POST">
            <table>
                <tr>
                    <td>Student Name: </td>
                    <td><input type="text" name="name" value="<%=name%>" required="" /></td>
                </tr>
                <tr>
                    <td>Age: </td>
                    <td><input type="text" name="age" value="<%=age%>" required="" /></td>
                </tr>
                <tr>
                    <td>Student Number: </td>
                    <td><input type="text" name="num" value="<%=num%>" required="" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Edit" /></td>
                </tr>
            </table>
        </form> 
    </body>
</html>
