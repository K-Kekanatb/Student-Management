<%-- 
    Document   : find_student_outcome
    Created on : 26 Jul 2025, 9:36:45 PM
    Author     : khuts
--%>

<%@page import="za.ac.tut.entity.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Find Student Outcome Page</title>
    </head>
    <body>
        <h1>Student Found</h1>
        <p>
            The Student has been found
        </p>
        <%
            Student ns = (Student) request.getAttribute("ns");
            String name = ns.getName();
            Integer age = ns.getAge();
            Integer num = ns.getStudNumber();
        %>
        <table>
            <th>Name</th>
            <th>Student Number</th>
            <th>Age</th>
            <tr>
                <td><%=name%></td>
                <td><%=num%></td>
                <td><%=age%></td>
            </tr>
        </table>
            <ul>
                <li><a href="menu.jsp">Main Menu</a></li>
            </ul>
    </body>
</html>
