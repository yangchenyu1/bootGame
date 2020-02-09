<%@ page language="java" contentType="text/html; charset=utf-8"
import="com.biz.*,com.pojo.*,java.util.*,java.text.SimpleDateFormat"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${lit==null }">
<c:redirect url="doint_Game.do"></c:redirect>
</c:if>    
<jsp:include page="top.jsp"></jsp:include>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>跳转</title>
</head>
<%
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");

String sname = request.getParameter("sname2");
String phone = request.getParameter("phone2");
%>
<body bgcolor="#99BBFF" style="">

<% 
List<Admin> kkk =(List)session.getAttribute("lit");

for(Admin ad:kkk){
if(!sname.equals(ad.getAdmin())&&!phone.equals(ad.getPassword())){
	//注册成功，跳转到下一页
	out.println("账户密码都不匹配！无权限！！！请回到普通用户<a href='add.jsp'>申请</a>！");}
else if(sname.equals(ad.getAdmin())&&!phone.equals(ad.getPassword())){
	out.println("密码输入错误！！！请回到登录页面<a href='add2.jsp'>重新登录</a>！");
}
else if(!sname.equals(ad.getAdmin())&&phone.equals(ad.getPassword())){
	out.println("账户输入错误！！！请回到登录页面<a href='add2.jsp'>重新登录</a>！");
}
else if(sname.equals(ad.getAdmin())&&phone.equals(ad.getPassword())){
	out.println("登录成功！点<a href='list2.jsp'>订单信息</a>！");	
}
}
%>

</body>
</html>