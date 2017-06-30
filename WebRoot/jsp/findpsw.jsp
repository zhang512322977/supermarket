<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
  <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<jsp:include page="kj/head.jsp"></jsp:include>
<title>找回密码</title>
</head>

<body>
<jsp:include page="kj/top.jsp">

	<!--找回密码-->
	<div class="page_style">
		<div class="zhmm_style">
			<div class="title_name">密码找回</div>
			<form action="">
			<ul class="select_style clearfix">
				
				<li><label class="labelname"> <input type="radio"
						name="RadioGroup1" value="1" id="RadioGroup1_1" /> <span>邮箱找回</span>
				</label> <label> <input name="" type="text" class="addtext"
						style=" width:230px;" /> <input name="" type="submit" value="发送"
						class=" zh_btn fs_btn" /> </label></li>
				<li><label class="labelname"> <input type="radio"
						name="RadioGroup1" value="1" id="RadioGroup1_2" /> <span>手机找回</span>
				</label> <label> <input name="" type="text" class="addtext"
						style=" width:230px;" /> <input name="" type="submit" value="验证身份"
						class=" zh_btn yz_btn" /> </label></li>
			</ul>
			</form>
		</div>

	</div>
	<!--网站地图-->
	<jsp:include page="kj/head.jsp"></jsp:include>
	<script>
		$(document).ready(function() {
			$('.select_style input').iCheck({
				checkboxClass : 'icheckbox_flat-green',
				radioClass : 'iradio_flat-green'
			});
		});
	</script>
</body>
</html>
