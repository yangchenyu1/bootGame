<%@ page language="java" contentType="text/html; charset=utf-8"
import="com.biz.*,com.pojo.*,java.util.*,java.text.SimpleDateFormat"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="top.jsp"></jsp:include>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>管理员登录</title>
</head>
<%
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");

%>
<body bgcolor="#99BBFF" style="background: url(uppic/2.jpg)">

<form action="transit.jsp" method="post">
<table border="1" width="400" height="400" align="center">
  <tr align="center" bgcolor="">
  <td colspan="2">登录</td>
  </tr>
  <tr>
  <td>姓名</td>
  <td>
  <input type="text" name="sname2" id="sname2" >
  </td>
  </tr>
  <tr>
  <td>电话</td>
  <td>
  <input type="text" name="phone2" id="phone2">
  </td> 
  <tr align="center" bgcolor="">
  <td colspan="2">
  <input type="submit" value="登录">
  <input type="reset" value="重置">
   
  </td>
  </table>
</form>
</body>
</html>