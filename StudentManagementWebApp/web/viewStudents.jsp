<%-- 
    Document   : viewStudents
    Created on : 22 Jul 2025, 9:31:51 PM
    Author     : khuts
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Students Page</title>
    </head>
    <body>
        <h1>View Students</h1>
        <p>
            Click the button below to view
        </p>
        <form action="ViewServlet" method="GET">
            <ul>
                <li><input type="submit" value="View"></li>
            </ul>
        </form>
            
    </body>
</html>
