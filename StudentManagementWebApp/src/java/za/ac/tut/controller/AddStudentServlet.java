/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.controller;

import java.io.IOException;
import java.io.PrintWriter;
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
public class AddStudentServlet extends HttpServlet {

    @EJB StudentFacadeLocal sfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        Integer age = Integer.parseInt(request.getParameter("age"));
        Integer studNumber = Integer.parseInt(request.getParameter("studNumber"));
        
        Student student = new Student(name, age, studNumber);
        sfl.create(student);
        
        RequestDispatcher rd = request.getRequestDispatcher("add_student_outcome.jsp");
        rd.forward(request, response);
    }

    

}
