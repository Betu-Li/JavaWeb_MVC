package com.example.stu.controller;

import com.example.stu.service.StudentService;
import com.example.stu.service.StudentServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        StudentService service = new StudentServiceImpl();
        String uid = request.getParameter("uid");
        String pwd = request.getParameter("pwd");
        int _uid = Integer.parseInt(uid);
        boolean result = service.addLogin(_uid,pwd);

        if(!result) {
            request.setAttribute("register", "reg");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }else {
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }

    }

}

