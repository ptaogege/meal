<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib uri='/struts-tags' prefix='s' %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<title>�����Ʒ</title>
		<link rel="stylesheet" href="/css/styles.css" type="text/css" />
	</head>

	<body>
		<table width="95%" height="170" border="0" cellpadding="0"
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
					<div style="background-image: url(images/004.gif)">
						&nbsp;
					</div>
					<br><br>
					<table width="75%" cellspacing="0" cellpadding="4" align="center"
						style="text-align:center; border:1px #cccccc solid;">
						<tr style="background-color:#CCCCFF;">
							<td>
								��ϵ
							</td>
							<td>
								����
							</td>
							<td>
								ժҪ
							</td>
							<td>
								�۸�
							</td>	
							<td>
								�޸�
							</td>		
							<td>
								ɾ��
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
							    <a href="toUpdateMeal?meal.mealId=${mealItem.mealId}">�޸�</a>
							</td>	
							<td>
								<a href="deleteMeal?meal.mealId=${mealItem.mealId}">ɾ��</a>
							</td>				
						</tr>						
						</s:iterator>
						<!-- ��ҳ�����ӿ�ʼ -->
						<table align="center">
							<tr>
								<td width="100">
									<s:if test="pager.curPage>1">
										<A href='toManageMeal?pager.curPage=1&meal.mealseries.seriesId=${requestScope.seriesId}&meal.mealName=${requestScope.mealName}'>��ҳ</A>&nbsp;&nbsp;
										<A href='toManageMeal?pager.curPage=${pager.curPage-1 }&meal.mealseries.seriesId=${requestScope.seriesId}&meal.mealName=${requestScope.mealName}'>��һҳ</A>
									</s:if>
								</td>
								<td width="100">
									<s:if test="pager.curPage < pager.pageCount">
										<A href='toManageMeal?pager.curPage=${pager.curPage+1}&meal.mealseries.seriesId=${requestScope.seriesId}&meal.mealName=${requestScope.mealName}'>��һҳ</A>&nbsp;&nbsp;
										<A href='toManageMeal?pager.curPage=${pager.pageCount }&meal.mealseries.seriesId=${requestScope.seriesId}&meal.mealName=${requestScope.mealName}'>βҳ</A>
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
