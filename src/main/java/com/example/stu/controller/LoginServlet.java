package com.example.stu.controller;

import com.example.stu.service.StudentService;
import com.example.stu.service.StudentServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        StudentService service = new StudentServiceImpl();
        HttpSession session = request.getSession();

        if (session.getAttribute("loginErrorMessage") != null) {
            session.invalidate();
        }
        String uid = request.getParameter("uid");
        String pwd = request.getParameter("pwd");
        System.out.println(uid);
        System.out.println(pwd);

        if (uid!=null && !pwd.equals(""))
        {
            int _uid = Integer.parseInt(uid);
            boolean result = service.login(_uid, pwd);
            boolean type = service.type(_uid, pwd);

            if (result) {

                if (type) {
                    session.setAttribute("login", "type0");
                    response.sendRedirect("main.jsp");
                } else {
                    session.setAttribute("login", "type1");
                    response.sendRedirect("main1.jsp");
                }
            } else {
                System.out.println("账号或密码错误！");
                session.setAttribute("pwdError","账号或密码错误！");
                response.sendRedirect("index.jsp");
            }
        }
        else {
            response.sendRedirect("index.jsp");
        }
    }

}

