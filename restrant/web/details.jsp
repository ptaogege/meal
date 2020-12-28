<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri='/struts-tags' prefix='s' %>
<html>
  <head>
   
    <title>餐品详细页面</title> 
	<link rel="stylesheet" href="/css/styles.css" type="text/css" />
  </head>
  
  <body>
    <table width="90%" height="629" border="0" cellpadding="0"
			cellspacing="0" align="center">
			<tr>
				<tr>
				<td width="200" height="101">
					<img src="images/jb_logo.jpg" width="64" height="32" />
					<strong><span
						style="font-size: 20px;">网上订餐系统</span> </strong>
				</td>
				<td width="640" style="padding-left: 40px;">
					
				</td>
			</tr>
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
				<td valign="top" width="100%">
					<br />
					<div style="background-image:url(images/004.gif)">
						&nbsp;
					</div>
					<div style="background-color:#FFCC99;" align="center">
						餐品详情
					</div>
					<br>
					<br />				
					<table width="616" border="0" cellspacing="0" cellpadding="3" align="center">
						<tr>
							<td width="148">
								<img src="mealimages/${requestScope.aMeal.mealImage}" width="148" height="115" />
							</td>
							<td width="468" valign="top">
								<span style="font-size: larger">${requestScope.aMeal.mealName }</span>

								<br /><br/>
								<span style="color:gray;">￥${requestScope.aMeal.mealPrice }</span>
								<br /><br/>
								<a href="ShoppingCartServlet?type=add&mid="><img src="images/buy_cn.gif" border="0" width="60" height="20" /></a>
								<br />

							</td>
						</tr>
						<tr>
							<td>
								编号：${requestScope.aMeal.mealId}
							</td>
							<td>
								摘要：${requestScope.aMeal.mealSummarize }
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<div align="center">
									详细资料
								</div>
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<hr />
							</td>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<img src="mealimages/${requestScope.aMeal.mealImage}" width="300" height="189" />
								<br />
								<br />
								${requestScope.aMeal.mealDescription }
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<br>
					<hr width=100%>					
				</td>
			</tr>
		</table>
  </body>
</html>
