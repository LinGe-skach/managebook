<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'update.jsp' starting page</title>
    <script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-1.11.0.js" ></script>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  
  	<form action="updateBook.action" method="post" id="fom">
  	 <input type="hidden" value="${book.id}" name="book1.id">
    <table>
    <tr><h2>编辑图书</h2><tr>
    <tr><td>书名</td><td><input type="text" value="${book.name}" name="book1.name" required></td></tr>
    <tr><td>作者</td><td><input type="text" value="${book.author}" name="book1.author" required></td></tr>
    <tr><td>出版社</td><td><input type="text" value="${book.publish}" name="book1.publish" required></td></tr>
    <tr><td>出版日期</td><td><input type="text" value="${book.publishdate}" name="book1.publishdate" required></td></tr>
    <tr><td>页数</td><td><input type="text" value="${book.page}" name="book1.page" required></td></tr>
    <tr><td>价格</td><td><input type="text" value="${book.price}" name="book1.price" required></td></tr>
    <tr><td>内容摘要</td><td><TEXTAREA name="book1.content" required>${book.content }</TEXTAREA></td></tr>
    <tr><td><input type="button" value="提交" id="tj"></td><td><input type="button" value="返回" onclick="window.location.href='guanli.action'"></td></tr>
    </table>
   
    </form>
  </body>
  <script type="text/javascript">
  $(document).ready(function(){
  	$("#tj").click(function(){
  	var name=$("input[name=book1.name]")
  		var flag=true;
  		var pname="/^[A-Za-z0-9\u4e00-\u9fa5]{3,20}+$/";
  		if(!pname.test(name)){
  			flag=false;
  			alert("名字为3-20");
  			return;
  		}
  		if(flag){
  			$("#fom").submit();
  		}
  		
  	})
  
  });
  
  
  </script>
</html>
