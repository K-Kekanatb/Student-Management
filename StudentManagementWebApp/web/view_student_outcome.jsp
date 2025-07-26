<%-- 
    Document   : view_student_outcome
    Created on : 26 Jul 2025, 8:57:37 PM
    Author     : khuts
--%>

<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entity.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Students Outcome Page</title>
    </head>
    <body>
        <h1>Class List</h1>
        <%
            List<Student> student = (List<Student>) request.getAttribute("student");
            String name = "";
            Integer age,studNumber = 0;
            
            
        %>
        <table>
            <th>Name</th>
            <th>Student Number</th>
            <th>Age</th>
            <%
                for(int i = 0; i > student.size(); i++) {
                    Student s = student.get(i);
                    name = s.getName();
                    age = s.getAge();
                    studNumber = s.getStudNumber();
                    %>
            
            <tr>
                <td><%=name%></td>
                <td><%=studNumber%></td>
                <td><%=age%></td>
            </tr>
            <%
                }
            %>
        </table>
        <ul>
            <li><a href="menu.jsp">Main Menu</a></li>
        </ul>
    </body>
</html>
