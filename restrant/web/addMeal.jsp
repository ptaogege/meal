<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib uri='/struts-tags' prefix='s' %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>��Ӳ�Ʒ</title>
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
						style="font-size: 20px;">���϶���ϵͳ</span> </strong>
				</td>
				<td width="640" style="padding-left: 40px;">
					
				</td>
			</tr>
			<tr>
				<td height="41" colspan="2"
					style="background-image: url(images/001.gif);" align="center">
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
					<img src="http://img.ptao.top/b90495aa75cb9e5b287f51ec0f26520f.jpeg" width="215" height="500" />

				</td>
				<td valign="top" width="100%">
					<div style="background-image: url(images/004.gif)">
						&nbsp;
					</div>
					<div style="background-color: #FFCC99;" align="center">
						��Ӳ�Ʒ
					</div>
					<br />
					<s:form action="doAddMeal" method="post" enctype="multipart/form-data">
						<table align="center" cellpadding="8">
							<s:textfield name="meal.mealName" label="����" />
							<s:select name="meal.mealseries.seriesId" label="��ϵ" list="#request.mealSeriesList" listKey="seriesId" listValue="seriesName" />  
							<s:textfield name="meal.mealSummarize" label="ժҪ" />
							<s:textfield name="meal.mealDescription" label="����" />
							<s:textfield name="meal.mealPrice" label="�۸�" />
							<s:file name="doc" label="ͼƬ" />
							<button type="submit">ȷ��</button>
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
