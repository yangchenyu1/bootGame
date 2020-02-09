<%@ page language="java" contentType="text/html; charset=utf-8"
import="com.biz.*,com.pojo.*,java.util.*,java.text.SimpleDateFormat"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${pb==null}">
 <c:redirect url="findPageAll_Game.do"></c:redirect> 
</c:if>
<jsp:include page="top.jsp"></jsp:include>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>订单展示</title>
<script type="text/javascript">
//更改每页记录数
function dochanrows(){
	var rows=document.form1.rows.value;
	if(isNaN(rows)){
		alert("请输入正确的数字");
		document.form1.rows.value=${pb.rows}
       return
	}
	window.location="findPageAll_Game.do?rows="+rows;
}
//跳转页数
function dochanpage(){
	var page=document.form1.page.value;
	if(isNaN(page)){
		alert("请输入正确的数字");
		document.form1.page.value=${pb.page}
       return
	}
	window.location="findPageAll_Game.do?page="+page;
}
</script>
</head>
<body bgcolor="#99BBFF" style="background: url(uppic/2.jpg)">
<table border="1" width="850" height="500" align="center">
<tr align="center" >
<td colspan="10">订单展示</td>
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
<c:forEach items="${pb.pagelist}" var="ga">
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
   <a href="delById_Game.do?gid=${ga.getGid()}">退单</a>
    <a href="exit_Game.do?gid=${ga.getGid()}">退出</a>
</td>
</tr>
</c:forEach>
</table>
<!-- 分页 -->
<form action="" id="form1" name="form1">
<table width="850" align="center"  bgcolor="">
<tr align="center">
  <td>
  <c:if test="${pb.page>1}">
  <a href="findPageAll_Game.do?page=1">首页</a>
 </c:if>  
 </td>
 <td>
 <c:if test="${pb.page>1}">
<a href="findPageAll_Game.do?page=${pb.page-1}">上一页</a>
 </c:if> 
</td>
  <td>
  <c:if test="${pb.page<pb.maxpage}">
  <a href="findPageAll_Game.do?page=${pb.page+1}">下一页</a>
 </c:if>
  </td>
  <td>
  <c:if test="${pb.page<pb.maxpage}">
  <a href="findPageAll_Game.do?page=${pb.maxpage}">尾页 </a>
 </c:if>
  </td>
  <td>跳转到第
 <input type="text" name="page" size="2" id="page" value="${pb.page}"> 
  页
  <input type="button" name="button" id="button" onclick="dochanpage()" value="确定">
  </td>
  <td>每页 
 <input type="text" name="rows" size="2"  id="rows" value="${pb.rows}"> 
 条
  <input type="button" name="button1" id="button1" onclick="dochanrows()" value="确定"> 
  </td>
  <td>${pb.page}/${pb.maxpage}</td>
</tr>
</table>
</form>
</body>
</html>