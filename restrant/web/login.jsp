<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri='/struts-tags' prefix='s' %>
<html>
	<head>
		<title>��¼ҳ��</title>		
		<link rel="stylesheet" href="/css/styles.css" type="text/css" />
	</head>
	<body>
		<table width="90%" height="629" border="0" cellpadding="0"
			cellspacing="0" align="center">
			<tr>
				<td width="200" height="101">
					<img src="images/jb_logo.jpg" width="64" height="32" />
					<strong><span
						style="font-size: 20px;">���϶���ϵͳ</span> </strong>
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

				<td valign="top" width="80%">
					
					<div style="background-image:url(images/004.gif)">
						&nbsp;
					</div>
					<br/>
					<div style="background-color:#FFCC99;" align="center">
						���϶���ϵͳ�û���ֱ�ӵ�¼
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
									�û�����
								</td>
								<td width="205">
									<input type="text" name="loginName" style="width:200px;" />
								</td>
							</tr>
							<tr>
								<td>
									�� &nbsp;&nbsp;�룺
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
									<input type="submit" name="login" value="�� ¼"/>
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
									��¼����
								</td>
								<td width="205">
									<input type="text" name="loginName" style="width:200px;" />
								</td>
							</tr>
							<tr>
								<td>
									�� &nbsp;&nbsp;�룺
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
									<input type="submit" name="login" value="�� ¼" />
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
