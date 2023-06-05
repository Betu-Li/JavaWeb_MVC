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

@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {

        String sno = request .getParameter("sno");
        String sname  = request.getParameter("sname");
        String sex  = request.getParameter("sex");
        String age  = request.getParameter("age");
        String grades  = request.getParameter("grades");

        int _sno = 0;
        if(sno != null && !"".equals(sno)){
            _sno = Integer.parseInt(sno);
        }
        int _age = 0;
        if(age != null && !"".equals(age)){
            _age = Integer.parseInt(age);
        }
        int _grades=0;
        if(grades!=null && !"".equals(grades))
        {
            _grades=Integer.parseInt(grades);
        }


        Student stu = new Student(_sno, sname, sex, _age, _grades);

        StudentService service = new StudentServiceImpl();
        service.updateStudentBySno(_sno,stu);

        //3.跳转界面
        request.getRequestDispatcher("ShowAllStudentsServlet").forward(request, resp);

    }
}


