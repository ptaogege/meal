<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri='/struts-tags' prefix='s' %>
<html>
	<head>
		<title>�û�ע��ҳ��</title>		
		<link rel="stylesheet" href="/css/styles.css" type="text/css" />
		<script type="text/javascript">
			function usercheck(){
				if(document.ufrm.username.value.length==0){
					alert("�������û���");
					return false;
				}
				if(document.ufrm.userpwd.value.length==0){
					alert("����������");
					return false;
				}
				return true;
			}
			function admincheck(){
				if(document.afrm.adminname.value.length==0){
					alert("�������¼��");
					return false;
				}
				if(document.afrm.adminpwd.value.length==0){
					alert("����������");
					return false;
				}
				return true;
			}
		</script>
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
					<a href="toAddMeal">���Ӳ�Ʒ</a> |
					<a href="toManageMeal">������Ʒ</a> |
					<a href="toManageOrders">��������</a> |
					<a href="logOut?type=adminlogout">ע��</a> &nbsp;&nbsp; &nbsp;&nbsp;
					<font style="color: red">��ӭ����${sessionScope.admin.loginName }</font>
					</s:if>
					
				</td>
			</tr>
			<tr>
				<td valign="top" width="100%" align="center">
					
					<div style="background-image:url(images/004.gif)">
						&nbsp;
					</div>				    
                    <form action="register" method="post" name="frm"
						onsubmit="return check()">
						<table width="60%" cellspacing="0" cellpadding="3" align="center"
							style="text-align:center; border:1px #cccccc solid;">
							<tr style="background-color:#CCCCFF;">
								<td colspan="2">
									��дע����Ϣ
								</td>
							</tr>
							<tr>
								<td align="right" style="width:320px;" >
									��¼���ƣ�
								</td>
								<td align="left">
									<input type="text" name="user.loginName" style="width:220px;" />									
								</td>
							</tr>
							<tr>
								<td align="right" style="width:320px;">
									��¼���룺
								</td>
								<td align="left">
									<input type="password" name="user.loginPwd" style="width:220px;" />									
								</td>
							</tr>							
							<tr>
								<td align="right" style="width:320px;">
									��ʵ������
								</td>
								<td align="left">
									<input type="text" name="user.trueName" style="width:220px;" />									
								</td>
							</tr>						
							<tr>
								<td align="right" style="width:320px;">
									�绰���룺
								</td>
								<td align="left">
									<input type="text" name="user.phone" style="width:220px;" />									
								</td>
							</tr>
							<tr>
								<td align="right" style="width:320px;">
									�����ʼ���
								</td>
								<td align="left">
									<input type="text" name="user.email" style="width:220px;" />									
								</td>
							</tr>
							<tr>
								<td align="right" style="width:320px;">
									Ĭ�ϵ�ַ��
								</td>
								<td align="left">
									<input type="text" name="user.address" style="width:220px;" />									
								</td>
							</tr>
							<tr>
								<td colspan="2">
									&nbsp;
								</td>
							</tr>
							<tr style="background-color:#CCCCFF;">
								<td colspan="2">
									<input name="register" type="submit" id="register" value="ע��" />
								</td>
							</tr>
						</table>
					</form>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<br>
					<hr width=100%>
					<br>
					<br>
					<br>
				</td>
			</tr>
		</table>
	</body>
</html>