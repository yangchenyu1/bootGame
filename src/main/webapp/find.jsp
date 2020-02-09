<%@ page language="java" contentType="text/html; charset=utf-8"
import="com.biz.*,com.pojo.*,java.util.*,java.text.SimpleDateFormat"
    pageEncoding="utf-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="top.jsp"></jsp:include>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户查找</title>
</head>
<body bgcolor="#99BBFF" style="background: url(uppic/2.jpg)">
<form  action="findById_Game.do" method="post">
<table border="1" width="400" height="400" align="center">
  <tr align="center" >
  <td colspan="2">用户查找</td>
  </tr>
  <tr>
  <td>编号</td>
  <td>
  <input type="text" name="gid" id="gid" >
  </td>
  </tr>
 
  <tr align="center">
  <td colspan="2">
  <input type="hidden" id="op" name="op" value="" >
  <input type="submit" value="查找">
  <input type="reset" value="重置">
  </td>
  </tr>
</table>
</form>
</body>
</html>