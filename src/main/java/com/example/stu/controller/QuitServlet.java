package com.example.stu.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@WebServlet("/QuitServlet")
public class QuitServlet extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession  session =   request.getSession();
        session.invalidate();//清空session对象中的所有属性数据内容
        resp.sendRedirect("index.jsp");
    }
}



