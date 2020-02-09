<%@ page language="java" contentType="text/html; charset=utf-8"
import="com.biz.*,com.pojo.*,java.util.*,java.text.SimpleDateFormat"
    pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="top.jsp"></jsp:include>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户修改</title>
</head>

<body bgcolor="#99BBFF" style="background: url(uppic/2.jpg)">
<form  action="update_Game.do" enctype="multipart/form-data" method="post">
<table border="1" width="400" height="400" align="center">

  <tr align="center" >
  <td colspan="2">用户修改</td>
  </tr>
  <tr>
  <td>姓名</td>
  <td>
  <input type="text" name="gname" id="gname" value="${uls.gname}">
  <input type="hidden" name="gid" id="gid" value="${uls.gid}">
  </td>
  </tr>
  <tr>
  <td>性别</td>
  <td>
  <input type="text" name="sex" id="sex" readonly="readonly" value="${uls.sex}">
  </td>
  </tr>
  <tr>
  <td>下单时间</td>
  <td>
  <% Date da = new Date();
  SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd-HH:mm:ss");
  String oid = df.format(da);
  %>
  <input type="text" name="gtime" readonly="readonly" id="gtime" value="<%=oid%>" value="${uls.gtime}">
  </td>
  </tr>
  <tr>
  <td>电话</td>
  <td>
  <input type="text" name="phone" id="phone" value="${uls.phone}">
  </td>
  <tr>
  <td>qq</td>
  <td>
  <input type="text" name="qq" id="qq" value="${uls.qq}">
  </td>
  </tr>
  <tr>
  <td>游戏</td>
  <td>
  <select name="id" id="id">
  <c:forEach items="${list}" var="bs">
  <option value="${bs.num}"
  <c:if test="${bs.num==gs.id}">
   selected="selected"
   </c:if>
   >
 ${bs.platform}</option>
  </c:forEach>
  </select>
  </td>
  </tr>
    <tr>
  <td>金额</td>
  <td>
  <input type="text" name="money" id="money" value="${uls.money}">
  </td>
  </tr>
  <tr align="center">
  <td colspan="2">
  <input type="hidden" id="op" name="op"  >
   
  <input type="submit" value="提交" >
  <input type="reset" value="重置">
  </td>
  </tr>
</table>
</form>
</body>
</html>