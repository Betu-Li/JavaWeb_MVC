<%--
  Created by IntelliJ IDEA.
  User: Yuay
  Date: 2023/6/4
  Time: 22:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ page import="com.example.stu.pojo.Student" %>
<!DOCTYPE html>
<html >
<head>
  <title>学生信息管理平台-管理员</title>

  <style>
    .titleDiv{
      height: 85px;
      color:white;
      padding-top: 30px;
      font-size: 50px;
      padding-left: 30px;
      font-family: 隶书;
    }

    .mainDiv{
      width: 899px;
      height: 500px;
      border: 4px rgb(237, 237, 237) solid;
      border-radius: 5px;
      background-image: url("/jpg/backg.jpg");
      margin: auto;
      margin-top: 50px;
      background-size: auto;
    }

    .Navigation{
      width: 899px;
      height: 200px;
      background-color:#ECECEC;
      opacity:0.8;
      text-align: center;
      line-height: 200px;
    }

    .a1 {
      background:#59c2c5;
      color:#fff;
      padding: 10px;
      text-decoration: none;
      font-size: 16px;
      line-height:30px;
      border-radius:10px;
      border:none;
    }
    .a1:hover{
      background-color: #3c96aa;
    }

  </style>
</head>
<body>
<div class="mainDiv">
  <div class="titleDiv">欢迎进入学生信息管理平台</div>
  <%
    if(session.getAttribute("login") == null) {
      session.setAttribute("loginErrorMessage", "您必须先登录才能访问主页！");
      response.sendRedirect("index.jsp");
    }
    else if(session.getAttribute("login") == "type1")
    {
      session.setAttribute("loginErrorMessage", "您没有权限！");
      response.sendRedirect("index.jsp");
    }
  %>
  <div class="Navigation">
    <a class="a1" href="addStudent.jsp">添加学生</a>
    <a class="a1" href="ShowAllStudentsServlet">查看或修改所有学生信息</a>
    <a class="a1" href="QuitServlet">退出登录</a>
  </div>
</div>
</body>
</html>

