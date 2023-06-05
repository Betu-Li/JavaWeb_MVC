<%--
  Created by IntelliJ IDEA.
  User: Yuay
  Date: 2023/6/4
  Time: 22:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>添加学生信息</title>

  <style>
    .titleDiv{
      height: 2px;
      color:white;
      padding-top: 12px;
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

    .addDiv{
      height: 380px;
      width: 260px;
      padding:50px;
      background-color:rgba(255,255,255,0.9);
      border-radius:25px;
      border:1px #bdbdbd solid;
      opacity:0.9;
      float: right;
      margin-right: 80px
    }

    .name{
      font-size: 20px;

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
  <form action = "AddServlet">
    <div class = "addDiv">
      <div class = "name">添加学生信息</div>

      <div class = "item">
        <input type = "text" name="sno" placeholder="学号"/>
      </div>
      <div class = "item">
        <input type = "text" name="sname" placeholder="姓名"/>
      </div>
      <div class = "item">
        <input type = "text" name="sex" placeholder="性别"/>
      </div>
      <div class = "item">
        <input type = "text" name="age" placeholder="年龄"/>
      </div>
      <div class = "item">
        <input type = "text" name="grades" placeholder="分数"/>
      </div>
      <input type = "submit" class = "btn" value = "添加"/>
      <a href = "main.jsp">返回</a>
    </div>
  </form>
</div>
</div>
</body>
</html>

