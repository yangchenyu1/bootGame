<%@ page language="java" contentType="text/html; charset=utf-8"
import="com.biz.*,com.pojo.*,java.util.*,java.text.SimpleDateFormat"
    pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${lis==null }">
<c:redirect url="findById_Game.do"></c:redirect>
</c:if>
<jsp:include page="top.jsp"></jsp:include>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户查找</title>
</head>
<body bgcolor="#99BBFF" style="background: url(uppic/2.jpg)">
<c:if test="${lis!=null }">
<form  action="" enctype="multipart/form-data" method="post">
<table border="1" width="420" height="400" align="center">
  <tr align="center" >
  <td colspan="2">用户查询</td>
  </tr>
  <tr>
<td>编号</td>
<td>${lis.gid} </td>
</tr>
<tr>
<td>姓名</td>
<td>${lis.gname}</td>
</tr>
<tr>
<td>性别</td>
<td>${lis.sex}</td>
</tr>
<tr>
<td>下单时间</td>
<td>${lis.gtime}</td>
</tr>
<tr>
<td>电话</td>
<td>${lis.phone}</td>
</tr>
<tr>
<td>QQ</td>
<td>${lis.qq}</td>
</tr>
<tr>
<td>游戏名称</td>
<td>${lis.platform}</td>
</tr>
<tr>
<td>金额</td>
<td>${lis.money}</td>
</tr>
  <tr align="center">
  <td colspan="2">
<a href="find.jsp">返回首页</a>
  </td>
  </tr>
</table>
</form>
</c:if>
<c:if test="${lis==null }">
查无此人！！！<a href='find.jsp'>返回上一页</a>
</c:if>
</body>
</html>