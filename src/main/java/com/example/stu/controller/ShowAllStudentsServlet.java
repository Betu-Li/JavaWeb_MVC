package com.example.stu.controller;

import com.example.stu.pojo.Student;
import com.example.stu.service.StudentService;
import com.example.stu.service.StudentServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/ShowAllStudentsServlet")
public class ShowAllStudentsServlet extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        StudentService service = new StudentServiceImpl();
        HttpSession  session =   request.getSession();
        List<Student> allStudents = service.getAllStudents();
        session.setAttribute("allStudents", allStudents);
        response.sendRedirect("showAllStudents.jsp");
    }

}

