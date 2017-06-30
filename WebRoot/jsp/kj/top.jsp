<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	if (session.getAttribute("basePath") == null) {
		session.setAttribute("basePath", basePath);
	}
%>
<div id="header_top">
	<div id="top">
		<div class="Inside_pages">
			<div class="Collection">
				<c:choose>
					<c:when test="${empty user }">
						<a href="${basePath }jsp/login.jsp" class="green">请登录</a>
						<a href="${basePath }jsp/reg.jsp" class="green">免费注册</a>
					</c:when>
					<c:otherwise>
						<a href="${basePath }jsp/user-info.jsp" class="green">欢迎${user.username}</a>
						<a href="${basePath }user/user_logout.action" class="green">注销</a>
					</c:otherwise>
				</c:choose>

			</div>
			<div class="hd_top_manu clearfix">
				<ul class="clearfix">
					<li class="hd_menu_tit" data-addclass="hd_menu_hover"><a
						href="${basePath }index.jsp">首页</a></li>
					<li class="hd_menu_tit" data-addclass="hd_menu_hover"><a
						href="${basePath }jsp/user-manager.jsp">我的小充</a></li>
					<li class="hd_menu_tit" data-addclass="hd_menu_hover"><a
						href="${basePath }jsp/massages.jsp">消息中心</a></li>
					<li class="hd_menu_tit" data-addclass="hd_menu_hover"><a
						href="${basePath }jsp/dp/good/good-catagory.jsp">商品分类</a></li>
					<li class="hd_menu_tit" data-addclass="hd_menu_hover"><a
						href="${basePath }jsp/cart.jsp">我的购物车<b>(23)</b></a></li>
				</ul>
			</div>
		</div>
	</div>
	<div id="header" class="header top_header_style">
		<div class="logo">
			<a href="${basePath }index.jsp"><img
				src="${basePath }images/logo.png" /></a>
		</div>
		<!--结束图层-->
		<div class="Search">
			<div class="search_list">
				<ul>
					<li class="current"><a href="${basePath }jsp/dp/good/good.jsp">产品</a></li>
					<li><a href="${basePath }jsp/messages.jsp">信息</a></li>
				</ul>
			</div>
			<div class="clear search_cur">
				<input name="searchName" id="searchName" class="search_box"
					onkeydown="keyDownSearch()" type="text"> <input name=""
					type="submit" value="搜 索" class="Search_btn" />
			</div>
			<div class="clear hotword">热门搜索词：香醋&nbsp;&nbsp;&nbsp;茶叶&nbsp;&nbsp;&nbsp;草莓&nbsp;&nbsp;&nbsp;葡萄&nbsp;&nbsp;&nbsp;菜油</div>
		</div>
		<!--购物车样式-->
		<div class="hd_Shopping_list" id="Shopping_list">
			<div class="s_cart">
				<a href="${basePath }jsp/cart.jsp">我的购物车</a> <i class="ci-right">&gt;</i><i
					class="ci-count" id="shopping-amount">0</i>
			</div>
			<div class="dorpdown-layer">
				<div class="spacer"></div>
				<!--<div class="prompt"></div><div class="nogoods"><b></b>购物车中还没有商品，赶紧选购吧！</div>-->
				<ul class="p_s_list">
					<li>
						<div class="img">
							<img src="${basePath }images/tianma.png">
						</div>
						<div class="content">
							<p class="name">
								<a href="#">产品名称</a>
							</p>
							<p>颜色分类:紫花8255尺码:XL</p>
						</div>
						<div class="Operations">
							<p class="Price">￥55.00</p>
							<p>
								<a href="#">删除</a>
							</p>
						</div>
					</li>
				</ul>
				<div class="Shopping_style">
					<div class="p-total">
						共<b>1</b>件商品 共计<strong>￥ 515.00</strong>
					</div>
					<a href="${basePath }jsp/cart.jsp" title="去购物车结算" id="btn-payforgoods"
						class="Shopping">去购物车结算</a>
				</div>
			</div>
		</div>
	</div>
	<!--菜单栏-->
	<div class="Navigation" id="Navigation">
		<ul class="Navigation_name">
			<li><a href="${basePath }index.jsp">首页</a></li>
			<li><a href="#">你身边的超市</a></li>
			<li><a href="${basePath }jsp/product-relist.jsp">预售专区</a><em class="hot_icon"></em></li>
			<li><a href="${basePath }jsp/product-list.jsp">商城</a></li>
			<li><a href="${basePath }helf-hours-index.jsp">半小时生活圈</a></li>
			<li><a href="#">好评商户</a></li>
			<li><a href="#">热销活动</a></li>
			<li><a href="${basePath }jsp/brands.jsp">联系我们</a></li>
		</ul>
	</div>
	<script>
		$("#Navigation").slide({
			titCell : ".Navigation_name li",
			trigger : "click"
		});
	</script>
</div>
</body>