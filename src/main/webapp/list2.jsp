<%@ page language="java" contentType="text/html; charset=utf-8"
import="com.biz.*,com.pojo.*,java.util.*,java.text.SimpleDateFormat"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${gam==null}">
 <c:redirect url="findAll_Game.do"></c:redirect> 
</c:if>
<jsp:include page="top.jsp"></jsp:include>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>订单查看</title>
</head>
<body bgcolor="#99BBFF" style="">
<table border="1" width="800" height="400" align="center">
<tr align="center" >
<td colspan="11">订单查看</td>
</tr>
<tr>
<td>编号</td>
<td>姓名</td>
<td>性别</td>
<td>下单时间</td>
<td>电话</td>
<td>QQ</td>
<td>游戏名称</td>
<td>金额</td>
<td>功能选择</td>
</tr>
<c:forEach items="${gam}" var="ga">
<tr>
<td>${ga.getGid()}</td>
<td>${ga.getGname()}</td>
<td>${ga.getSex()}</td>
<td>${ga.getGtime()}</td>
<td>${ga.getPhone()}</td>
<td>${ga.getQq()}</td>
<td>${ga.getPlatform()}</td>
<td>${ga.getMoney()}</td>

<td>
   <a href="AdelById_Game.do?gid=${ga.getGid()}">删除</a>
    <a href="UfindById_Game.do?gid=${ga.getGid()}">修改</a>
      <input type="hidden" name="gid" id="gid" value="${ga.gid}">
    <a href="add2.jsp">退出登录</a>
</td>
</tr>
</c:forEach>
</table>
</body>
</html>