<%--
  Created by IntelliJ IDEA.
  User: Yuay
  Date: 2023/6/4
  Time: 22:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ page import="com.example.stu.pojo.Student" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>修改学生信息</title>

    <style>
        .titleDiv{
            height: 20px;
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

        .updateDiv{
            height: 340px;
            width: 260px;
            padding:50px;
            background-color:rgba(255,255,255,0.9);
            border-radius:25px;
            border:1px #bdbdbd solid;
            opacity:0.9;
            float: right;
            margin-right: 100px
        }

        .name{
            font-size: 25px;
        }

        .item{
            height:60px;
        }

        .item input{
            line-height:40px;
            width:245px;
            border:none;
            border-bottom: 1px solid #59c2c5;
            margin-bottom: 20px;
            margin-top: 10px;
        }

        .btn{
            display:block;
            width:255px;
            height:50px;
            color:#fff;
            background:#59c2c5;
            font-size:16px;
            line-height:30px;
            text-align:center;
            border-radius:10px;
            border:none;
            margin-top: 10px;
        }

        a{
            font-size:18px;
            padding-right:100px;
            padding-bottom: 50px;
        }

    </style>
</head>

<body>
<div class="mainDiv">
    <div class="titleDiv">学生信息管理平台</div>

    <form action = "UpdateServlet">
        <%
            Student s =(Student)request.getAttribute("student");
        %>
        <div class = "updateDiv">
            <div class = "name">修改学生信息</div>
            <input type="hidden" name="sno" value="<%=s.getSno()%>"/>
            <div class = "item">
                <input type = "text" name="sname" placeholder="姓名" value="<%=s.getSname()%>"/>
            </div>
            <div class = "item">
                <input type = "text" name="sex" placeholder="性别" value="<%=s.getSex()%>"/>
            </div>
            <div class = "item">
                <input type = "text" name="age" placeholder="年龄" value="<%=s.getAge()%>"/>
            </div>
            <div class = "item">
                <input type = "text" name="grades" placeholder="分数" value="<%=s.getgrades()%>"/>
            </div>
            <input type = "submit" class = "btn" value = "修改"/>
            <a href = "showAllStudents.jsp">返回</a>
        </div>
    </form>
    </div>
</div>
</body>
</html>


