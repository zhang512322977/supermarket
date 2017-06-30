<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<div class="menu_style">
					<div class="user_title">
						<a href="${basePath }jsp/user-center.jsp">用户中心</a>
					</div>
					<div class="user_Head">
						<div class="user_portrait">
							<a href="#" title="修改头像" class="btn_link"></a> <img
								src="${basePath }images/people.png">
							<div class="background_img"></div>
						</div>
						<div class="user_name">
							<p>
								<span class="name">${user.username}</span><a href="#">[修改密码]</a>
							</p>
							<p>出生日期：${user.birthday}</p>
						</div>
					</div>
					<div class="sideMen">
						<!--菜单列表图层-->
						<dl class="accountSideOption1">
							<dt class="transaction_manage">
								<em class="icon_1"></em>订单管理
							</dt>
							<dd>
								<ul>
									<li><a href="${basePath }jsp/order.jsp">我的订单</a></li>
									<li><a href="用户中心-收货地址.html">收货地址</a></li>
									<li><a href="${basePath }jsp/product-relist.jsp">产品预订</a></li>
								</ul>
							</dd>
						</dl>
						<dl class="accountSideOption1">
							<dt class="transaction_manage">
								<em class="icon_2"></em>会员管理
							</dt>
							<dd>
								<ul>
									<li><a href="${basePath }jsp/user-info.jsp">用户信息</a></li>
									<li><a href="${basePath }jsp/user-shoucang.jsp">我的收藏</a></li>
									<li><a href="${basePath }jsp/user-liuyan.jsp">我的留言</a></li>
									<li><a href="#">我的标签</a></li>
									<li><a href="#">我的推荐</a></li>
									<li><a href="#">我的评论</a></li>
								</ul>
							</dd>
						</dl>
						<dl class="accountSideOption1">
							<dt class="transaction_manage">
								<em class="icon_3"></em>账户管理
							</dt>
							<dd>
								<ul>
									<li><a href="${basePath }jsp/user-manager.jsp">账户余额</a></li>
									<li><a href="${basePath }jsp/user-jilu.jsp">消费记录</a></li>
									<li><a href="#">跟踪包裹</a></li>
									<li><a href="#">资金管理</a></li>
								</ul>
							</dd>
						</dl>
						<dl class="accountSideOption1">
							<dt class="transaction_manage">
								<em class="icon_4"></em>分销管理
							</dt>
							<dd>
								<ul>
									<li><a href="${basePath }shop/shop_getall.action">店铺管理</a></li>
									<li><a href="#">我的盟友</a></li>
									<li><a href="#">我的佣金</a></li>
									<li><a href="#">申请提现</a></li>
								</ul>
							</dd>
						</dl>
					</div>
					<script>
						jQuery(".sideMen").slide({
							titCell : "dt",
							targetCell : "dd",
							trigger : "click",
							defaultIndex : 0,
							effect : "slideDown",
							delayTime : 300,
							returnDefault : true
						});
					</script>
				</div>