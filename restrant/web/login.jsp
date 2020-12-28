<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri='/struts-tags' prefix='s' %>
<html>
	<head>
		<title>登录页面</title>		
		<link rel="stylesheet" href="/css/styles.css" type="text/css" />
	</head>
	<body>
		<table width="90%" height="629" border="0" cellpadding="0"
			cellspacing="0" align="center">
			<tr>
				<td width="200" height="101">
					<img src="images/jb_logo.jpg" width="64" height="32" />
					<strong><span
						style="font-size: 20px;">网上订餐系统</span> </strong>
				</td>
			</tr>
			<tr>
				<td height="41" colspan="2"
					style="background-image:url(images/001.gif);" align="center">
					|
					<a href="toShowMeal">网站首页</a> |
					<s:if test="(#session.admin==null) && (#session.user==null)">					
					<a href="register.jsp">用户注册</a> |
					<a href="login.jsp?role=user">用户登录</a> |
					<a href="login.jsp?role=admin">管理员登录</a> |
					</s:if>
					<s:if test="#session.user!=null">
					<a href="modifyMyInfo.jsp">修改个人信息</a> |
					<a href="shopCart.jsp">我的购物车</a> |
					<a href="toMyOrders">我的订单</a> |
					<a href="logOut?type=userlogout">注销</a> &nbsp;&nbsp; &nbsp;&nbsp;
					<font style="color: red">欢迎您：${sessionScope.user.trueName }</font>					
					</s:if>
					<s:if test="#session.admin!=null">
					<a href="toAddMeal">添加餐品</a> |
					<a href="toManageMeal">管理餐品</a> |
					<a href="toManageOrders">订单处理</a> |
					<a href="logOut?type=adminlogout">注销</a> &nbsp;&nbsp; &nbsp;&nbsp;
					<font style="color: red">欢迎您：${sessionScope.admin.loginName }</font>
					</s:if>
				</td>
			</tr>
			<tr>

				<td valign="top" width="80%">
					
					<div style="background-image:url(images/004.gif)">
						&nbsp;
					</div>
					<br/>
					<div style="background-color:#FFCC99;" align="center">
						网上订餐系统用户请直接登录
					</div>
					<br>
					<br>
					<br>
					<br>
					<br />

					<s:if test="#parameters.role[0]=='user'">
					<form action="validateLogin?type=userlogin" method="post" name="ufrm">
						<table width="300" border="0" cellspacing="0" cellpadding="8"
							align="center" bgcolor="aqua">
							<tr>
								<td width="90">
									用户名：
								</td>
								<td width="205">
									<input type="text" name="loginName" style="width:200px;" />
								</td>
							</tr>
							<tr>
								<td>
									密 &nbsp;&nbsp;码：
								</td>
								<td>
									<input type="password" name="loginPwd" style="width:200px"/>
								</td>
							</tr>
							<tr>
								<td>
									&nbsp;
								</td>
								<td>
									<input type="submit" name="login" value="登 录"/>
								</td>
							</tr>
							<tr>
								<td colspan="2">

								</td>
							</tr>
						</table>
					</form>
					</s:if>
					
				
					<s:if test="#parameters.role[0]=='admin'"> 
					<form action="validateLogin?type=adminlogin" method="post" name="afrm">
						<table width="300" border="0" cellspacing="0" cellpadding="8"
							align="center" bgcolor="#7fffd4">
							<tr>
								<td width="90">
									登录名：
								</td>
								<td width="205">
									<input type="text" name="loginName" style="width:200px;" />
								</td>
							</tr>
							<tr>
								<td>
									密 &nbsp;&nbsp;码：
								</td>
								<td>
									<input type="password" name="loginPwd" style="width:200px;" />
								</td>
							</tr>
							<tr>
								<td>
									&nbsp;
								</td>
								<td>
									<input type="submit" name="login" value="登 录" />
								</td>
							</tr>
							
							<tr>
								<td colspan="2">
									
								</td>
							</tr>
							
						</table>
					</form>					
					</s:if>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<br>
					<br>					
					<br>
					<br>
				</td>
			</tr>
		</table>
	</body>
</html>
