<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib uri='/struts-tags' prefix='s' %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<title>管理餐品</title>
		<link rel="stylesheet" href="/css/styles.css" type="text/css" />
	</head>

	<body>
		<table width="95%" height="170" border="0" cellpadding="0"
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
					<div style="background-image: url(images/004.gif)">
						&nbsp;
					</div>
					<br><br>
					<table width="75%" cellspacing="0" cellpadding="4" align="center"
						style="text-align:center; border:1px #cccccc solid;">
						<tr style="background-color:#CCCCFF;">
							<td>
								菜系
							</td>
							<td>
								菜名
							</td>
							<td>
								摘要
							</td>
							<td>
								价格
							</td>	
							<td>
								修改
							</td>		
							<td>
								删除
							</td>					
						</tr>						
						<s:iterator id="mealItem" value="#request.mealList" status="st">
						<tr>							
							<td>
								<s:property value="mealseries.seriesName"/>
							</td>
							<td>
								<s:property value="mealName"/>
							</td>
							<td>
								<s:property value="mealSummarize"/>
							</td>
							<td>
								<s:property value="mealPrice"/>
							</td>	
							<td>
							    <a href="toUpdateMeal?meal.mealId=${mealItem.mealId}">修改</a>
							</td>	
							<td>
								<a href="deleteMeal?meal.mealId=${mealItem.mealId}">删除</a>
							</td>				
						</tr>						
						</s:iterator>
						<!-- 分页超链接开始 -->
						<table align="center">
							<tr>
								<td width="100">
									<s:if test="pager.curPage>1">
										<A href='toManageMeal?pager.curPage=1&meal.mealseries.seriesId=${requestScope.seriesId}&meal.mealName=${requestScope.mealName}'>首页</A>&nbsp;&nbsp;
										<A href='toManageMeal?pager.curPage=${pager.curPage-1 }&meal.mealseries.seriesId=${requestScope.seriesId}&meal.mealName=${requestScope.mealName}'>上一页</A>
									</s:if>
								</td>
								<td width="100">
									<s:if test="pager.curPage < pager.pageCount">
										<A href='toManageMeal?pager.curPage=${pager.curPage+1}&meal.mealseries.seriesId=${requestScope.seriesId}&meal.mealName=${requestScope.mealName}'>下一页</A>&nbsp;&nbsp;
										<A href='toManageMeal?pager.curPage=${pager.pageCount }&meal.mealseries.seriesId=${requestScope.seriesId}&meal.mealName=${requestScope.mealName}'>尾页</A>
									</s:if>
								</td>
								<td width="140">
									共${pager.rowCount}记录，共${pager.curPage}/${pager.pageCount}页&nbsp;&nbsp;
								</td>
							</tr>
						</table>

						<!-- 分页超链接结束-->
					</table>
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
