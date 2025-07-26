/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.entity.Student;
import za.ac.tut.entity.bl.StudentFacadeLocal;

/**
 *
 * @author khuts
 */
public class ViewServlet extends HttpServlet {

    @EJB StudentFacadeLocal sfl;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Student> student = sfl.findAll();
        
        request.setAttribute("student", student);
        
        RequestDispatcher rd = request.getRequestDispatcher("view_student_outcome.jsp");
        rd.forward(request, response);
    }

    

}
