<%--
  Created by IntelliJ IDEA.
  User: Yuay
  Date: 2023/6/4
  Time: 22:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.example.stu.pojo.Page" %>
<%@ page import="com.example.stu.pojo.Student" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>

    <title>学生信息管理平台</title>

    <style>
        .mainDiv{
            width: 900px;
            height: 550px;
            border: 4px rgb(237, 237, 237) solid;
            border-radius: 5px;
            background-image: url("/jpg/backg.jpg");
            margin: auto;
            background-size: auto;
        }

        .titleDiv{
            height: 20px;
            color:white;
            padding-top: 30px;
            font-size: 50px;
            padding-left: 30px;
            font-family: 隶书;
        }

        .showStudentDiv{
            background-size: cover;
            width:700px;
            height:500px;
            margin: auto;
            margin-top: 50px;

        }

        .item{
            height:40px;
            border-radius:15px;
        }

        .item a{
            background-color: lightgrey;
            text-decoration: none;
            font-size:15px;
            color:black;
            border-radius:3px;
        }

        .item input{
            width: 20px;
            text-align: center;
        }


        table{
            width:100%;
            border-collapse:collapse;
            background-color: rgba(255,255,255,0.9);
            opacity: 0.8;
        }


        table body{
            display: block;
            height:300px;
            overflow-y: scroll;
        }
        table td{
            border:1px solid #A6A6A6;
            height:30px;
            width: 300px;
            text-align: center;
            font-size: 15px;
        }
        table th{
            height:30px;
            border:1px solid #A6A6A6;
        }

    </style>
</head>
<body>
<div class="mainDiv">
    <div class="titleDiv">分页查询学生信息</div>
    <div class = "showStudentDiv">
        <table  border="2" cellspacing="0">
            <tr>
                <th><h3>学号</h3></th>
                <th><h3>姓名</h3></th>
                <th><h3>性别</h3></th>
                <th><h3>年龄</h3></th>
                <th><h3>分数</h3></th>

            </tr>
            <%
                Page page1 = (Page)request.getAttribute("page1");

                for(Student student:page1.getStudent()){

            %>
            <tr>
                <td><%=student.getSno() %></td>
                <td><%=student.getSname() %></td>
                <td><%=student.getSex() %></td>
                <td><%=student.getAge() %></td>
                <td><%=student.getgrades() %></td>
            </tr>
            <%
                }
            %>
        </table>

        <%
            if(page1.getCurrentPage()==page1.getTotalPage()){
        %>
        <div class = item>
            <a href = "ShowStudentsByPageServlet?currentPage=0">首页</a>
            <a href = "ShowStudentsByPageServlet?currentPage=<%=page1.getCurrentPage()-1%>">上一页</a>
            <input type = "text" name = "currentPage" value="<%=page1.getTotalPage()+1%>"/>
        </div>
        <%
        } else if(page1.getCurrentPage()==0){
        %>
        <div class = item>
            <input type = "text" name = "currentPage" value="1"/>
            <a href = "ShowStudentsByPageServlet?currentPage=<%=page1.getCurrentPage()+1%>">下一页</a>
            <a href = "ShowStudentsByPageServlet?currentPage=<%=page1.getTotalPage()%>">尾页</a>
        </div>
        <%
        } else{
        %>
        <div class = item>
            <a href = "ShowStudentsByPageServlet?currentPage=0">首页</a>
            <a href = "ShowStudentsByPageServlet?currentPage=<%=page1.getCurrentPage()-1%>">上一页</a>
            <input type = "text" name = "currentPage" value="<%=page1.getCurrentPage()+1%>"/>
            <a href = "ShowStudentsByPageServlet?currentPage=<%=page1.getCurrentPage()+1%>">下一页</a>
            <a href = "ShowStudentsByPageServlet?currentPage=<%=page1.getTotalPage()%>">尾页</a>
        </div>
        <%
            }
        %>

        <a href = "main1.jsp">返回</a>
    </div>
</div>
</body>
</html>


