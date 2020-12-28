<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib uri='/struts-tags' prefix='s' %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<title>��Ʒ�б���ʾ</title>
		<link rel="stylesheet" href="/css/styles.css" type="text/css" />
		<style>
			.parent{
				position: relative;
				width: 644px;
				height: 36px;
				margin:10px auto;
			}
			input{
				 position: absolute;
				 width: 540px;
				 height: 37px;
				 border: none;
				 border: 1px solid #ccc;
			 }
			button{
				position: absolute;
				width: 100px;
				height: 35px;
				box-sizing: content-box;
				outline: none;
				border: none;
				background: #3385ff;
				border-bottom: 1px solid #2d78f4;
				color: #fff;
				right: 3px;
				top: 0;
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
						style="font-size: 20px;">���϶���ϵͳ</span> </strong>
				</td>
				<td width="640" style="padding-left: 40px;">
					
				</td>
			</tr>
			<tr>
				<td height="41" colspan="2"
					style="background-image:url(images/001.gif);" align="center">
					|
					<a href="toShowMeal">��վ��ҳ</a> |
					<s:if test="(#session.admin==null) && (#session.user==null)">					
					<a href="register.jsp">�û�ע��</a> |
					<a href="login.jsp?role=user">�û���¼</a> |
					<a href="login.jsp?role=admin">����Ա��¼</a> |
					</s:if>
					<s:if test="#session.user!=null">
					<a href="modifyMyInfo.jsp">�޸ĸ�����Ϣ</a> |
					<a href="shopCart.jsp">�ҵĹ��ﳵ</a> |
					<a href="toMyOrders">�ҵĶ���</a> |
					<a href="logOut?type=userlogout">ע��</a> &nbsp;&nbsp; &nbsp;&nbsp;
					<font style="color: red">��ӭ����${sessionScope.user.trueName }</font>					
					</s:if>
					<s:if test="#session.admin!=null">
					<a href="toAddMeal">��Ӳ�Ʒ</a> |
					<a href="toManageMeal">�����Ʒ</a> |
					<a href="toManageOrders">��������</a> |
					<a href="logOut?type=adminlogout">ע��</a> &nbsp;&nbsp; &nbsp;&nbsp;
					<font style="color: red">��ӭ����${sessionScope.admin.loginName }</font>
					</s:if>
					
				</td>
			</tr>
			<tr>
				<td valign="top" align="center">

					<img src="http://img.ptao.top/5888ae83e622c7d06a51d2b0c00a2de0.jpg" width="250" height="160">
						<br>
						<!-- ��ϵѭ����ʼ -->
					    <s:iterator id="mealSeries" value="#request.mealSeriesList">
						<br>
						<a href="toShowMeal?meal.mealseries.seriesId=${mealSeries.seriesId}">${mealSeries.seriesName }</a>
						<br>
						</s:iterator>
						<!-- ��ϵѭ������ -->
						
				</td>
				<td valign="top" width="80%">

					<br /><br/>
					<div align="left">
				      <s:form theme="simple" method="post" action="toShowMeal" cssClass="parent">
		        	    <s:textfield cssClass="input" name="meal.mealName"/>
		        	    <!-- ͨ�����ر��򱣴��û�ѡ����Ĳ�ϵ��ţ��ɸ��ݲ�Ʒ���ƺͲ�ϵ��ϲ�ѯ -->
						<s:hidden name="meal.mealseries.seriesId" value="%{#request.seriesId}"/>
						  <button type="submit">�˵���ѯ</button>
						<%--<s:submit value="��ѯ"/>--%>
					  </s:form>
					</div>
					<br />
					<div style="background-image: url(images/004.gif)">
						&nbsp;
					</div>
					<div style="background-color: #FFCC99;" align="right">
						<a href="shopCart.jsp"><img src="images/lcart_cn.gif"
								width="97" height="30" border="0" /> </a>
					</div>
					<br />
					<table cellpadding="5" cellspacing="8" style="font-size: 12px;">
					    <!-- ��Ʒѭ����ʼ -->
						<s:iterator id="mealItem" value="#request.mealList" status="st">
								<s:if test="#st.getIndex()%3==0">
						<tr>
						</s:if>
							<td>
								<a href="toShowDetails?meal.mealId=${mealItem.mealId}"><img
										src="mealimages/${mealItem.mealImage }" width="148"
										height="100" border="0" /> </a>
							</td>
							<td>
								<div>
									${ mealItem.mealId}
									:
									${ mealItem.mealName}
									<br />
									<span style="text-decoration: line-through; color: gray;">ԭ�ۣ���${ mealItem.mealPrice}</span>
									<br />
									�ּۣ���
									${ mealItem.mealPrice*0.9}
								</div>
								<div>&nbsp;</div>
								<a href="toShowDetails?meal.mealId=${mealItem.mealId}"><img src="images/detail_cn.gif" border="0" width="60" height="20" /></a>
								<a href="addtoshopcart?mealId=${mealItem.mealId }"><img src="images/buy_cn.gif" border="0" width="60" height="20" /></a>
							</td>
							<s:if test="#st.getIndex()%3==2">
						</tr>
						</s:if>
						</s:iterator>
					</table>
					<br /><hr />
						<!-- ��Ʒѭ������ -->
						
						<!-- ��ҳ�����ӿ�ʼ -->
						<table align="center">
						  <tr>
							<td width="100">
								<s:if test="pager.curPage>1">
									<A href='toShowMeal?pager.curPage=1&meal.mealseries.seriesId=${requestScope.seriesId}&meal.mealName=${requestScope.mealName}'>��ҳ</A>&nbsp;&nbsp;
									<A href='toShowMeal?pager.curPage=${pager.curPage-1 }&meal.mealseries.seriesId=${requestScope.seriesId}&meal.mealName=${requestScope.mealName}'>��һҳ</A>
								</s:if>
							</td>
							<td width="100">
								<s:if test="pager.curPage < pager.pageCount">
									<A href='toShowMeal?pager.curPage=${pager.curPage+1}&meal.mealseries.seriesId=${requestScope.seriesId}&meal.mealName=${requestScope.mealName}'>��һҳ</A>&nbsp;&nbsp;
									<A href='toShowMeal?pager.curPage=${pager.pageCount }&meal.mealseries.seriesId=${requestScope.seriesId}&meal.mealName=${requestScope.mealName}'>βҳ</A>
								</s:if>
							</td>
							<td width="140">
								��${pager.rowCount}��¼����${pager.curPage}/${pager.pageCount}ҳ&nbsp;&nbsp;
							</td>
						  </tr>
						</table>						
						<!-- ��ҳ�����ӽ���-->
					
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
