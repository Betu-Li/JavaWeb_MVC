package com.example.stu.controller;

import com.example.stu.pojo.Page;
import com.example.stu.pojo.Student;
import com.example.stu.service.StudentService;
import com.example.stu.service.StudentServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/ShowStudentsByPageServlet")
public class ShowStudentsByPageServlet extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        StudentService Service = new StudentServiceImpl();
        int count = Service.getTotalCount();

        Page page = new Page();


        String currentPage = request.getParameter("currentPage");

        if(currentPage == null) {
            currentPage = "0";
        }
        int _currentPage = Integer.parseInt(currentPage);
        page.setCurrentPage(_currentPage);

        int totalCount = Service.getTotalCount();
        page.setTotalCount(totalCount);


        int pageSize = 5;
        int totalPage = (totalCount / pageSize) + 1;
        page.setTotalPage(totalPage+1);


        page.setPageSize(pageSize);

        List<Student> student = Service.queryStudentsByPageNo(_currentPage, pageSize);
        page.setStudent(student);

        request.setAttribute("page1", page);
        request.getRequestDispatcher("showAllStudentsByPageNo.jsp").forward(request, response);
    }

}

