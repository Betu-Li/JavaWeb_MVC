<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>学生信息管理平台</title>
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
            background-image: url("/jpg/backg.jpg ");
            margin: auto;
            margin-top: 50px;
        }

        .loginDiv{
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

        a{
            font-size:15px;
            color:#59c2c5;
            padding-left:20px;
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

        .login-btn{
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
            margin-bottom: 20px;
            margin-top: 10px;
        }
        .login-btn:hover{
            background-color: #3c96aa;
        }
    </style>



</head>

<body>

<div class="mainDiv">
    <div class="titleDiv">学生信息管理平台</div>

    <form action="LoginServlet" method="post">
        <div class="loginDiv">
            <div class="name">
                用户登录 <a href="register.jsp"> 立即注册</a>
            </div>

            <div class=item>
                <input type="text" name="uid" placeholder="用户名"/>
            </div>
            <div class=item>
                <input type="password" name="pwd" placeholder="密码"/>
            </div>
            <input type="submit" class="login-btn" value="登 录"/>
            <%
                if(session.getAttribute("loginErrorMessage") != null){

                    String loginErrorMessage = (String)session.getAttribute("loginErrorMessage");
                    out.print(loginErrorMessage);
                }
            %>
            <%
                String register = (String) request.getAttribute("register");
                if (register!= null) {
                    if (register.equals("reg")) {
                        out.println("注册成功, 请登录！");
                    }
                }
            %>
            <%
                if(session.getAttribute("pwdError") != null){

                    String pwdError = (String)session.getAttribute("pwdError");
                    out.print(pwdError);
                }
            %>
        </div>
    </form>
</div>
</body>

</html>
