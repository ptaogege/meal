<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib uri='/struts-tags' prefix='s' %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>添加餐品</title>
		<link rel="stylesheet" href="/css/styles.css" type="text/css" />
		<style>
			button{
				position: absolute;
				width: 100px;
				height: 28px;
				box-sizing: content-box;
				outline: none;
				border: none;
				background: #3385ff;
				border-bottom: 1px solid #2d78f4;
				color: #fff;
				right: 580px;
				top: 480px;
			}
		</style>
	</head>

	<body>
		<table width="90%" height="170" border="0" cellpadding="0"
			cellspacing="0" align="center">
			<tr>
				<td width="200" height="101">
					<img src="images/jb_logo.jpg" width="64" height="32" />
					<strong><span
						style="font-size: 20px;">网上订餐系统</span> </strong>
				</td>
				<td width="640" style="padding-left: 40px;">
					
				</td>
			</tr>
			<tr>
				<td height="41" colspan="2"
					style="background-image: url(images/001.gif);" align="center">
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
				<td valign="top" align="center">
					<img src="http://img.ptao.top/b90495aa75cb9e5b287f51ec0f26520f.jpeg" width="215" height="500" />

				</td>
				<td valign="top" width="100%">
					<div style="background-image: url(images/004.gif)">
						&nbsp;
					</div>
					<div style="background-color: #FFCC99;" align="center">
						添加餐品
					</div>
					<br />
					<s:form action="doAddMeal" method="post" enctype="multipart/form-data">
						<table align="center" cellpadding="8">
							<s:textfield name="meal.mealName" label="菜名" />
							<s:select name="meal.mealseries.seriesId" label="菜系" list="#request.mealSeriesList" listKey="seriesId" listValue="seriesName" />  
							<s:textfield name="meal.mealSummarize" label="摘要" />
							<s:textfield name="meal.mealDescription" label="介绍" />
							<s:textfield name="meal.mealPrice" label="价格" />
							<s:file name="doc" label="图片" />
							<button type="submit">确定</button>
						</table>
					</s:form>
			  </td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<br>
					<hr width=100%>
					<br>
				</td>
			</tr>
		</table>
	</body>
</html>
