<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
response.setContentType("text/html;charset=GBK");
request.setCharacterEncoding("GBK");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>后台登录</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="styles/book.css">
	</head>
  
  <body class="backgroundcolor" background="picture/back/Bg.png">
  <%
  request.getSession().setAttribute("login", true);
  request.getSession().setAttribute("loginType", "admin");
  %>
  
  <div class="login" style="background:url(picture/back/backLogin.png); width:350px;height:250px;">
  <form name="loginForm" method="post" action="backTop.jsp" target="backTop" >
  <p class="text"> 
  
  		&nbsp;&nbsp;&nbsp;后&nbsp;台
  	<% 
  	/* 给session添加登陆类型的缓存信息  */
  	request.getSession().setAttribute("loginType", "admin"); 
  	%>
  	&nbsp;&nbsp;&nbsp;登&nbsp;录
  	</p>
  	<p>
	  	<label>&nbsp;&nbsp&nbsp;&nbsp;;账&nbsp;&nbsp;号：
	  		<input type="text" name="account"  placeholder="输入用户名" style="height:30px;"/>
	  	</label>
	</p>
  	<p>
  		<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;密&nbsp;&nbsp;码：
  			<input type="password" name="password"  placeholder="输入用户密码" style="height:30px;"/>
  		</label>
  	</p>
  	<br />
  	<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  		<label>
  			<input type="submit" name="Submit" value="提交" style="height:30px;"/>
  		</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  		<label>
  			<input type="reset" name="Reset" value="重置" style="height:30px;"/>
  		</label>
  	</p>
  	<br/><br/>
  </form>
  </div>
</html>
