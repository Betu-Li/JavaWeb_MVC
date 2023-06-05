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



@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.获取sno
        String sno = request.getParameter("sno");

        int _sno = 0;
        if(sno != null && !"".equals(sno)){
            _sno = Integer.parseInt(sno);
        }

        //2.执行删除
        StudentService service = new StudentServiceImpl();
        Student stu = service.deleteStudent(_sno);
        //3.跳转到列表页
        request.setAttribute("stu", stu);
        request.getRequestDispatcher("ShowAllStudentsServlet").forward(request,response);
    }
}

