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
public class EditServlet extends HttpServlet {

    @EJB StudentFacadeLocal sfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Integer num = Integer.parseInt(request.getParameter("studNum"));
        String name = "";
        Integer age = 0;
        Student student = new Student(name, age, num);
        
        Student os = sfl.find(student);
        request.setAttribute("os", os);
        
        RequestDispatcher rd = request.getRequestDispatcher("edit_student_outcome.jsp");
        rd.forward(request, response);
        
    }

    

}
