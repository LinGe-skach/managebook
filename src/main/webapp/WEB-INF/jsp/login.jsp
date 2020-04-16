<%--
  Created by IntelliJ IDEA.
  User: 123
  Date: 2020/4/13
  Time: 13:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/static/css/login.css" />
    <script type="text/javascript" src="<%=request.getContextPath() %>/static/js/jquery-1.11.0.js" ></script>
    <title></title>
</head>
<body>
<form action="login.action" method="post" name="tab" id="tib">
    <div class="box">
        <div id="tittle"><h2 align="center">图书管理系统</h2></div>
        <p class="input_box">
            账户： <input id="name" type="text" placeholder="请输入您的昵称"><span id="name1"></span>
        </p>
        <p class="input_box">
            密码： <input id="password" type="password" placeholder="请设置您的密码"><span id="password1"></span>
        </p>
        <div id="error_box"><br></div>
        <div class="button"><button id="sb">立即登录</button></div>
    </div>
</form>
</body>
<script language="javascript">
    $(document).ready(function(){

        $("#sb").click(function(){
            var name=$("#name").val();
            alert(name);
            var password=$("#password").val();
            alert(password);
            var uPattern = /^[a-zA-Z0-9_-]{4,16}$/;
            if(!uPattern.test(name)){
                $("#name1").text("用户名不匹配");
                return false;

            }else{
                $("#name1").text("");
            }
            var pPattern = /^[a-zA-Z0-9_-]{3,16}$/;
            if(!pPattern.test(password)){
                $("#password1").text("密码为3-16位");
                return false;

            }else{
                $("#password1").text("");
            }
            var dz=$("#tib").attr("action");
            $.ajax({
                url: dz,
                data: {name:name,password:password},
                dateType: "json",
                type: "post",
                success: function(result){
                    var obj = eval("("+result+")");
                    alert(obj)
                    if(obj.ll=="1"){
                        if(obj.user.usertype=="1"){
                            window.location.href="<%=request.getContextPath()%>/guanli";
                        }else if(obj.user.usertype=="0"){
                            window.location.href="<%=request.getContextPath()%>/list";
                        }
                    }else if(obj.ll=="0"){
                        alert("用户名或密码错误");
                    }
                }

            });
        });
    });
</script>
</html>


