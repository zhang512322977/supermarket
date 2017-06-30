<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<jsp:include page="kj/head.jsp" />
<title>用户信息</title>
<style type="text/css">
 #preview {
	width: 260px;
	height: 190px;
	border: 1px solid #000;
	overflow: hidden;
}
#imghead {
	filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=image);
}
</style>
<script type="text/javascript">
	//图片上传预览    IE是用了滤镜。
	function previewImage(file) {
		var MAXWIDTH = 260;
		var MAXHEIGHT = 180;
		var div = document.getElementById('preview');
		if (file.files && file.files[0]) {
			div.innerHTML = '<img id=imghead>';
			var img = document.getElementById('imghead');
			img.onload = function() {
				var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT,
						img.offsetWidth, img.offsetHeight);
				img.width = rect.width;
				img.height = rect.height;
				//                 img.style.marginLeft = rect.left+'px';
				img.style.marginTop = rect.top + 'px';
			}
			var reader = new FileReader();
			reader.onload = function(evt) {
				img.src = evt.target.result;
			}
			reader.readAsDataURL(file.files[0]);
		} else //兼容IE
		{
			var sFilter = 'filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src="';
			file.select();
			var src = document.selection.createRange().text;
			div.innerHTML = '<img id=imghead>';
			var img = document.getElementById('imghead');
			img.filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = src;
			var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth,
					img.offsetHeight);
			status = ('rect:' + rect.top + ',' + rect.left + ',' + rect.width
					+ ',' + rect.height);
			div.innerHTML = "<div id=divhead style='width:"+rect.width+"px;height:"+rect.height+"px;margin-top:"+rect.top+"px;"+sFilter+src+"\"'></div>";
		}
	}
	function clacImgZoomParam(maxWidth, maxHeight, width, height) {
		var param = {
			top : 0,
			left : 0,
			width : width,
			height : height
		};
		if (width > maxWidth || height > maxHeight) {
			rateWidth = width / maxWidth;
			rateHeight = height / maxHeight;

			if (rateWidth > rateHeight) {
				param.width = maxWidth;
				param.height = Math.round(height / rateWidth);
			} else {
				param.width = Math.round(width / rateHeight);
				param.height = maxHeight;
			}
		}

		param.left = Math.round((maxWidth - param.width) / 2);
		param.top = Math.round((maxHeight - param.height) / 2);
		return param;
	}
</script>
</head>

<body>
	<jsp:include page="kj/top.jsp" />
	<!--用户中心样式-->
	<div class="user_style clearfix">
		<div class="user_center clearfix">
			<!--左侧样式-->
			<div class="left_style">
				<jsp:include page="kj/user-left.jsp" />
			</div>
			<!--右侧样式-->
			<div class="right_style">
				<!--消费记录样式-->
				<div class="user_address_style">
					<div class="title_style">
						<em></em>用户信息
					</div>
					<!--用户信息样式-->
					<!--个人信息-->
					<div class="Personal_info" id="Personal">
						<form action="${basePath }user/user_modify.action" method="post">
							<ul class="xinxi">
								<li><label>用户名：</label> <span><input
										name="user.username" type="text" class="text" value="${user.username }"
										 disabled="disabled" /></span></li>
								<li><label>真实姓名：</label> <span><input
										name="user.nickname" type="text" value="${user.nickname }"
										class="text" disabled="disabled" /></span></li>
								<li><label>出身日期：</label> <span class="time">${user.birthday}</span>
									<div class="add_time">
										<select name="year">
											<option>请选择年</option>
											<c:forEach begin="1900" step="1" end="2017" var="i">
												<option>${i}</option>
											</c:forEach>

										</select> <select name="mouth">
											<option>请选择月</option>
											<c:forEach begin="1" step="1" end="12" var="i">
												<option>${i}</option>
											</c:forEach>
										</select>
										<!--<select name=""></select>-->
										<input type="text" name="day" />
									</div></li>
								<li><label>用户性别：</label> <span class="sex">${user.sex}</span>
									<div class="add_sex">
										<input type="radio" name="user.sex" value="0" checked="checked" />
										保密&nbsp;&nbsp; <input type="radio" name="user.sex" value="1" />
										男&nbsp;&nbsp; <input type="radio" name="user.sex" value="2" />
										女&nbsp;&nbsp;
									</div></li>
								<li><label>电子邮箱：</label> <span><input
										name="user.email" type="text" value="${user.email}"
										class="text" disabled="disabled" /></span></li>
								<li><label>用户QQ：</label> <span><input
										name="user.qq" type="text" value="${user.qq }" class="text"
										disabled="disabled" /></span></li>
								<li><label>移动电话：</label> <span><input
										name="user.telephone" type="text" value="${user.telephone }"
										class="text" disabled="disabled" /></span></li>

								<div class="bottom">
									<input name="" type="button" value="修改信息" class="modify" />
									<input name="" type="submit" value="确认修改" class="confirm" />
								</div>
							</ul>
						</form>
						<form action="">
							<ul class="Head_portrait">
								<li><div id="preview">
										<img id="imghead" src='${basePath }images/people.png' />
									</div> <input type="file" onchange="previewImage(this)" /></li>
								<li><input name="name" type="submit" value="上传头像"
									class="submit" /></li>
							</ul>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="kj/bottom.jsp" />
</body>
</html>
