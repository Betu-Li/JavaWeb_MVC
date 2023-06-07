<%--
  Created by IntelliJ IDEA.
  User: Yuay
  Date: 2023/6/4
  Time: 22:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>注册账号</title>

  <style>
    .mainDiv{
      width: 899px;
      height: 500px;
      border: 4px rgb(237, 237, 237) solid;
      border-radius: 5px;
      background-image: url("/jpg/backg.jpg");
      margin: auto;
      margin-top: 50px;
    }


    .titleDiv{
      height: 85px;
      color:white;
      padding-top: 30px;
      font-size: 50px;
      padding-left: 30px;
      font-family: 隶书;
    }

    .registerDiv{
      height: 220px;
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
      padding-left:200px;
      padding-bottom: 50px;
      color:#59c2c5;

    }


  </style>
</head>
<body>
<div class="mainDiv">
  <div class="titleDiv">学生信息管理平台</div>
  <form action = "RegisterServlet">
    <div class = "registerDiv">
      <div class = "name">用户注册</div>
      <div class = "item">
        <input type = "text" name = "uid" placeholder="账号"/>
      </div>
      <div class = "item">
        <input type = "password" name = "pwd"  placeholder="密码"/>
      </div>
      <input type = "submit" class = "btn" value = "注册"/>
      <a href = "index.jsp" >返回</a>

    </div>
  </form>
</div>
</body>
</html>


