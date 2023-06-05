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

@WebServlet("/AddServlet")
public class AddServlet extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        StudentService service = new StudentServiceImpl();
        String sno  = request.getParameter("sno");
        String sname  = request.getParameter("sname");
        String sex  = request.getParameter("sex");
        String age  = request.getParameter("age");
        String grades  = request.getParameter("grades");

        int _sno = 0;
        if(sno != null || "".equals(sno)){
            _sno = Integer.parseInt(sno);
        }

        int _age = 0;
        if (age !=null || "".equals(age)){
            _age = Integer.parseInt(age);
        }

        int _grades=0;
        if(grades!=null || "".equals(grades)){
            _grades=Integer.parseInt(grades);
        }

        Student s = new Student(_sno, sname, sex, _age, _grades);
        int result = service.addStudent(s);
        System.out.println(result+" 0为成功获取");
        HttpSession session = request.getSession();
        session.setAttribute("student", "stu");
        response.sendRedirect("main.jsp");

    }
}

