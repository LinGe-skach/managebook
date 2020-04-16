<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'add.jsp' starting page</title>
    <script type="text/javascript" src="<%=request.getContextPath() %>/static/js/jquery-1.11.0.js" ></script>
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
    <form action="add.action" method="post" id="fom">
    <table>
    <tr><h2>编辑图书</h2><tr>
    <tr><td>书名</td><td><input type="text" value="" name="book1.name" required></td></tr>
    <tr><td>作者</td><td><input type="text" value="" name="book1.author" required></td></tr>
    <tr><td>出版社</td><td><input type="text" value="" name="book1.publish" required></td></tr>
    <tr><td>出版日期</td><td><input type="text" value="" name="book1.publishdate" required></td></tr>
    <tr><td>页数</td><td><input type="text" value="" name="book1.page" required></td></tr>
    <tr><td>价格</td><td><input type="text" value="" name="book1.price" required></td></tr>
    <tr><td>内容摘要</td><td><TEXTAREA name="book1.content" required></TEXTAREA></td></tr>
    <tr><td><input type="button" value="提交" id="tj"></td><td><input type="button" value="返回" onclick="window.location.href='guanli.action'"></td></tr>
    </table>
   
    </form>
  </body>
   <script type="text/javascript">
  $(document).ready(function(){
  	$("#tj").click(function(){
  		
  		$("#fom").submit();
  	
  	})
  
  });
  
  
  </script>
</html>
