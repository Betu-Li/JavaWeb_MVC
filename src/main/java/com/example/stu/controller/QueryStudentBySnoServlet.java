package com.example.stu.controller;

import com.example.stu.pojo.Student;
import com.example.stu.service.StudentService;
import com.example.stu.service.StudentServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;



@WebServlet("/QueryStudentBySnoServlet")
public class QueryStudentBySnoServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sno = request.getParameter("sno");
        int _sno = 0;
        if(sno != null && !"".equals(sno)){
            _sno = Integer.parseInt(sno);
        }


        StudentService service = new StudentServiceImpl();
        Student student = service.queryStudentBySno(_sno);


        request.setAttribute("student", student);

        request.getRequestDispatcher("updateStudent.jsp").forward(request,response);

    }
}


