<%@ page language="java" contentType="text/html; charset=utf-8"
   import="com.biz.*,com.pojo.*,java.util.*,java.text.SimpleDateFormat"
    pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${list==null }">
<c:redirect url="doinit_Game.do"></c:redirect>
</c:if>
<jsp:include page="top.jsp"></jsp:include>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户申请</title>
</head>
<body bgcolor="99BBFF" style="" >
<form  action="save_Game.do" enctype="multipart/form-data" method="post">
<table border="1" width="440" height="400" align="center">
  <tr align="center" bgcolor="">
  <td colspan="3">用户申请</td>
  </tr>
  <tr>
  <td>姓名</td>
  <td>
  <input type="text" name="gname" id="gname">
  </td>
  </tr>
  <tr>
  <td>性别</td>
  <td>
  <input type="radio" name="sex" id="radio1" checked="checked" value="男">男
   <input type="radio" name="sex" id="radio2" value="女">女
  </td>
  </tr>

  <tr>
  <td>下单时间</td>
  <td>
  <% Date da = new Date();
  SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
  String oid = df.format(da);
  %>
  <input type="text" name="gtime" readonly="readonly" id="gtime" value="<%=oid%>">
  </td>
  </tr>
  <tr>
  <td>电话</td>
  <td>
  <input type="text" name="phone" id="phone">
  </td>
  <tr>
  <td>qq</td>
  <td>
  <input type="text" name="qq" id="qq">
  </td>
  </tr>
  <tr>
  <td>游戏</td>
  <td>
  <select name="id" id="id">
  <c:forEach items="${list}" var="business">
  <option value="${business.num}">${business.platform}</option>
  </c:forEach>
  </select>
  </td>
  </tr>
    <tr>
  <td>金额</td>
  <td>
  <input type="text" name="money" id="money">
  </td>
  </tr>
  <tr align="center" bgcolor="">
  <td colspan="2">
  <input type="submit" value="确定" >
  <input type="reset" value="重置">
  </td>
  </tr>
  
</table>
</form>
</body>
</html>