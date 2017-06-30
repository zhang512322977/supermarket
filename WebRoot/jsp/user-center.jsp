<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>用户中心</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<jsp:include page="kj/head.jsp"></jsp:include>
</head>

<body>
	<jsp:include page="kj/top.jsp"></jsp:include>
	<!--用户中心样式-->
	<div class="user_style clearfix">
		<div class="user_center clearfix">
			<div class="left_style">
				<jsp:include page="kj/user-left.jsp" />	
			
			<!--浏览记录样式-->
			<div class="us_Records">
				<div id="Record_ps" class="Record_p">
					<div class="title_name">
						<span class="name left">浏览历史</span><span class="pageState right"></span>
					</div>
					<div class="hd">
						<a class="next">&lt;</a><a class="prev">&gt;</a>
					</div>
					<div class="bd">
						<ul>
							<li>
								<div class="p_width">
									<div class="pic">
										<a href=""><img src="${basePath }Products/P_1.jpg"></a>
									</div>
									<div class="title">
										<a href="#">金龙鱼 东北大米 蟹稻共生 盘锦大米5KG</a>
									</div>
									<div class="Purchase_info">
										<span class="p_Price">￥32.50</span> <a href="#"
											class="Purchase">立即购买</a>
									</div>
								</div>
							</li>
							<li>
								<div class="p_width">
									<div class="pic">
										<a href=""><img src="${basePath }Products/P_1.jpg"></a>
									</div>
									<div class="title">
										<a href="#">金龙鱼 东北大米 蟹稻共生 盘锦大米5KG</a>
									</div>
									<div class="Purchase_info">
										<span class="p_Price">￥32.50</span> <a href="#"
											class="Purchase">立即购买</a>
									</div>
								</div>
							</li>
							<li>
								<div class="p_width">
									<div class="pic">
										<a href=""><img src="${basePath }Products/P_1.jpg"></a>
									</div>
									<div class="title">
										<a href="#">金龙鱼 东北大米 蟹稻共生 盘锦大米5KG</a>
									</div>
									<div class="Purchase_info">
										<span class="p_Price">￥32.50</span> <a href="#"
											class="Purchase">立即购买</a>
									</div>
								</div>
							</li>
							<li>
								<div class="p_width">
									<div class="pic">
										<a href=""><img src="${basePath }Products/P_1.jpg"></a>
									</div>
									<div class="title">
										<a href="#">金龙鱼 东北大米 蟹稻共生 盘锦大米5KG</a>
									</div>
									<div class="Purchase_info">
										<span class="p_Price">￥32.50</span> <a href="#"
											class="Purchase">立即购买</a>
									</div>
								</div>
							</li>
							<li>
								<div class="p_width">
									<div class="pic">
										<a href=""><img src="${basePath }Products/P_1.jpg"></a>
									</div>
									<div class="title">
										<a href="#">金龙鱼 东北大米 蟹稻共生 盘锦大米5KG</a>
									</div>
									<div class="Purchase_info">
										<span class="p_Price">￥32.50</span> <a href="#"
											class="Purchase">立即购买</a>
									</div>
								</div>
							</li>
							<li>
								<div class="p_width">
									<div class="pic">
										<a href=""><img src="${basePath }Products/P_1.jpg"></a>
									</div>
									<div class="title">
										<a href="#">金龙鱼 东北大米 蟹稻共生 盘锦大米5KG</a>
									</div>
									<div class="Purchase_info">
										<span class="p_Price">￥32.50</span> <a href="#"
											class="Purchase">立即购买</a>
									</div>
								</div>
							</li>
							<li>
								<div class="p_width">
									<div class="pic">
										<a href=""><img src="${basePath }Products/P_1.jpg"></a>
									</div>
									<div class="title">
										<a href="#">金龙鱼 东北大米 蟹稻共生 盘锦大米5KG</a>
									</div>
									<div class="Purchase_info">
										<span class="p_Price">￥32.50</span> <a href="#"
											class="Purchase">立即购买</a>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<script type="text/javascript">
					jQuery("#Record_ps").slide({
						mainCell : ".bd ul",
						autoPage : true,
						effect : "leftLoop",
						vis : 1,
						autoPlay : false
					});
				</script>
			</div>
		</div>	
		<div class="right_style">
			<div class="info_content">
				<div class="Notice">
					<span>系统最新公告:</span>为了更好地服务于【每日鲜】的会员朋友及读者 发表意见。
				</div>
				<div class="user_info">
					<ul class="">
						<li class="Balance"><a href="#"><img
								src="${basePath }images/user_img_05.png" />
								<h4>余额：￥54.00</h4></a></li>
						<li class="Order_form"><a href="#"><img
								src="${basePath }images/user_img_04.png" />
								<h4>订单：(5)</h4></a></li>
						<li class="grade"><a href="#"><img
								src="${basePath }images/user_img_08.png" />
								<h4>3</h4></a></li>
						<li class="Favorable"><a href="#"><img
								src="${basePath }images/user_img_07.png" />
								<h4>钻石会员</h4></a></li>
						<li class="integral"><a href="#"><img
								src="${basePath }images/user_img_06.png" />
								<h4>234分</h4></a></li>
					</ul>
				</div>
				<!--样式-->
				<div class="user_info_p_s  clearfix">
					<!--订单记录-->
					<div class="left_user_cont">
						<div class="us_Orders left clearfix">
							<div class="Orders_name">
								<div class="title_name">
									<div class="Records">购买记录</div>
									<div class="right select">只记录你最近30天的购买记录</div>
								</div>
							</div>
							<table>
								<thead>
									<tr>
										<th>产品名称</th>
										<th>数量</th>
										<th>状态</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="img_link"><a href="#" class="img"><img
												src="${basePath }products/p_58.jpg" width="80" height="80"></a>
											<a href="#" class="title">雅诗兰黛（Estee
												Lauder）弹性紧实柔肤眼霜15ml(又名弹性紧实眼霜)（提拉紧致 保湿补水 淡化细纹）</a></td>
										<td>2</td>
										<td>完成</td>
										<td><a href="#" class="View">查看</a></td>
									</tr>
									<tr>
										<td class="img_link"><a href="#" class="img"
											title="山东红富士苹果"><img src="${basePath }products/p_2.jpg"
												width="80" height="80"></a> <i class="icon-copy"></i> <a
											href="#" class="img" title="进口澳洲苹果"><img
												src="${basePath }products/p_3.jpg" width="80" height="80"></a>
											<i class="icon-copy"></i> <a href="#" class="img"
											title="进口水果"><img src="${basePath }products/p_4.jpg"
												width="80" height="80"></a></td>
										<td>2</td>
										<td>完成</td>
										<td><a href="#" class="View">查看</a></td>
									</tr>
									<tr>
										<td class="img_link"><a href="#" class="img"
											title="山东红富士苹果"><img src="${basePath }products/p_2.jpg"
												width="80" height="80"></a> <i class="icon-copy"></i> <a
											href="#" class="img" title="进口水果"><img
												src="${basePath }products/p_24.jpg" width="80" height="80"></a></td>
										<td>2</td>
										<td>完成</td>
										<td><a href="#" class="View">查看</a></td>
									</tr>
								</tbody>
							</table>
							<div class="us_jls">共2条记录</div>
						</div>
					</div>
					<!--右侧记录样式-->
					<div class="right_user_recording">
						<div class="us_Record">
							<div id="Record_p" class="Record_p">
								<div class="title_name">
									<span class="name left">浏览历史</span><span
										class="pageState right"><span>1</span>/7</span>
								</div>
								<div class="hd">
									<a class="next">&lt;</a><a class="prev">&gt;</a>
								</div>
								<div class="bd">
									<ul>
										<li class="clone">
											<div class="p_width">
												<div class="pic">
													<a href=""><img src="${basePath }Products/P_1.jpg"></a>
												</div>
												<div class="title">
													<a href="#">金龙鱼 东北大米 蟹稻共生 盘锦大米5KG</a>
												</div>
												<div class="Purchase_info">
													<span class="p_Price">￥32.50</span> <a href="#"
														class="Purchase">立即购买</a>
												</div>
											</div>
										</li>
										<li>
											<div class="p_width">
												<div class="pic">
													<a href=""><img src="${basePath }Products/P_12.jpg"></a>
												</div>
												<div class="title">
													<a href="#">金龙鱼 东北大米 蟹稻共生 盘锦大米5KG</a>
												</div>
												<div class="Purchase_info">
													<span class="p_Price">￥32.50</span> <a href="#"
														class="Purchase">立即购买</a>
												</div>
											</div>
										</li>
										<li>
											<div class="p_width">
												<div class="pic">
													<a href=""><img src="${basePath }Products/P_23.jpg"></a>
												</div>
												<div class="title">
													<a href="#">金龙鱼 东北大米 蟹稻共生 盘锦大米5KG</a>
												</div>
												<div class="Purchase_info">
													<span class="p_Price">￥32.50</span> <a href="#"
														class="Purchase">立即购买</a>
												</div>
											</div>
										</li>
										<li>
											<div class="p_width">
												<div class="pic">
													<a href=""><img src="${basePath }Products/P_4.jpg"></a>
												</div>
												<div class="title">
													<a href="#">金龙鱼 东北大米 蟹稻共生 盘锦大米5KG</a>
												</div>
												<div class="Purchase_info">
													<span class="p_Price">￥32.50</span> <a href="#"
														class="Purchase">立即购买</a>
												</div>
											</div>
										</li>
										<li>
											<div class="p_width">
												<div class="pic">
													<a href=""><img src="${basePath }Products/P_5.jpg"></a>
												</div>
												<div class="title">
													<a href="#">金龙鱼 东北大米 蟹稻共生 盘锦大米5KG</a>
												</div>
												<div class="Purchase_info">
													<span class="p_Price">￥32.50</span> <a href="#"
														class="Purchase">立即购买</a>
												</div>
											</div>
										</li>
										<li>
											<div class="p_width">
												<div class="pic">
													<a href=""><img src="${basePath }Products/P_8.jpg"></a>
												</div>
												<div class="title">
													<a href="#">金龙鱼 东北大米 蟹稻共生 盘锦大米5KG</a>
												</div>
												<div class="Purchase_info">
													<span class="p_Price">￥32.50</span> <a href="#"
														class="Purchase">立即购买</a>
												</div>
											</div>
										</li>
										<li>
											<div class="p_width">
												<div class="pic">
													<a href=""><img src="${basePath }Products/P_1.jpg"></a>
												</div>
												<div class="title">
													<a href="#">金龙鱼 东北大米 蟹稻共生 盘锦大米5KG</a>
												</div>
												<div class="Purchase_info">
													<span class="p_Price">￥32.50</span> <a href="#"
														class="Purchase">立即购买</a>
												</div>
											</div>
										</li>
										<li>
											<div class="p_width">
												<div class="pic">
													<a href=""><img src="${basePath }Products/P_6.jpg"></a>
												</div>
												<div class="title">
													<a href="#">金龙鱼 东北大米 蟹稻共生 盘锦大米5KG</a>
												</div>
												<div class="Purchase_info">
													<span class="p_Price">￥32.50</span> <a href="#"
														class="Purchase">立即购买</a>
												</div>
											</div>
										</li>
										<li class="clone">
											<div class="p_width">
												<div class="pic">
													<a href=""><img src="${basePath }Products/P_11.jpg"></a>
												</div>
												<div class="title">
													<a href="#">金龙鱼 东北大米 蟹稻共生 盘锦大米5KG</a>
												</div>
												<div class="Purchase_info">
													<span class="p_Price">￥32.50</span> <a href="#"
														class="Purchase">立即购买</a>
												</div>
											</div>
										</li>
									</ul>
								</div>
							</div>
							<script type="text/javascript">
								jQuery("#Record_p").slide({
									mainCell : ".bd ul",
									effect : "leftLoop",
									vis : 1,
									autoPlay : false
								});
							</script>
						</div>
					</div>
				</div>
				<!--收藏商品-->
				<div class="Collections_p">
					<div class="slideGroups">
						<div class="parHd">
							<ul>
								<li>收藏的商品</li>
								<li>收藏的店铺</li>
							</ul>
						</div>
						<div class="parBd">
							<div class="Collect_Products">
								<a class="sPrev" href="javascript:void(0)">&lt;</a>
								<ul>
									<li>
										<div class="pic">
											<a href=""><img src="${basePath }Products/P_29.jpg"></a>
										</div>
										<div class="title">
											<a href="#">金龙鱼 东北大米 蟹稻共生 盘锦大米5KG</a>
										</div>
										<div class="p_Price">￥32.50</div>
									</li>
									<li >
										<div class="pic">
											<a href=""><img src="${basePath }Products/P_19.jpg"></a>
										</div>
										<div class="title">
											<a href="#">金龙鱼 东北大米 蟹稻共生 盘锦大米5KG</a>
										</div>
										<div class="p_Price">￥32.50</div>
									</li>
									<li>
										<div class="pic">
											<a href=""><img src="${basePath }Products/P_37.jpg"></a>
										</div>
										<div class="title">
											<a href="#">金龙鱼 东北大米 蟹稻共生 盘锦大米5KG</a>
										</div>
										<div class="p_Price">￥32.50</div>
									</li>
									<li>
										<div class="pic">
											<a href=""><img src="${basePath }Products/P_24.jpg"></a>
										</div>
										<div class="title">
											<a href="#">金龙鱼 东北大米 蟹稻共生 盘锦大米5KG</a>
										</div>
										<div class="p_Price">￥32.50</div>
									</li>
									<li>
										<div class="pic">
											<a href=""><img src="${basePath }Products/P_33.jpg"></a>
										</div>
										<div class="title">
											<a href="#">金龙鱼 东北大米 蟹稻共生 盘锦大米5KG</a>
										</div>
										<div class="p_Price">￥32.50</div>
									</li>
									<li>
										<div class="pic">
											<a href=""><img src="${basePath }Products/P_29.jpg"></a>
										</div>
										<div class="title">
											<a href="#">金龙鱼 东北大米 蟹稻共生 盘锦大米5KG</a>
										</div>
										<div class="p_Price">￥32.50</div>
									</li>
									<li>
										<div class="pic">
											<a href=""><img src="${basePath }Products/P_18.jpg"></a>
										</div>
										<div class="title">
											<a href="#">金龙鱼 东北大米 蟹稻共生 盘锦大米5KG</a>
										</div>
										<div class="p_Price">￥32.50</div>
									</li>
									<li>
										<div class="pic">
											<a href=""><img src="${basePath }Products/P_17.jpg"></a>
										</div>
										<div class="title">
											<a href="#">金龙鱼 东北大米 蟹稻共生 盘锦大米5KG</a>
										</div>
										<div class="p_Price">￥32.50</div>
									</li>
									<li>
										<div class="pic">
											<a href=""><img src="${basePath }Products/P_16.jpg"></a>
										</div>
										<div class="title">
											<a href="#">金龙鱼 东北大米 蟹稻共生 盘锦大米5KG</a>
										</div>
										<div class="p_Price">￥32.50</div>
									</li>
									<li>
										<div class="pic">
											<a href=""><img src="${basePath }Products/P_12.jpg"></a>
										</div>
										<div class="title">
											<a href="#">金龙鱼 东北大米 蟹稻共生 盘锦大米5KG</a>
										</div>
										<div class="p_Price">￥32.50</div>
									</li>
									<li>
										<div class="pic">
											<a href=""><img src="${basePath }Products/P_8.jpg"></a>
										</div>
										<div class="title">
											<a href="#">金龙鱼 东北大米 蟹稻共生 盘锦大米5KG</a>
										</div>
										<div class="p_Price">￥32.50</div>
									</li>
									<li>
										<div class="pic">
											<a href=""><img src="${basePath }Products/P_11.jpg"></a>
										</div>
										<div class="title">
											<a href="#">金龙鱼 东北大米 蟹稻共生 盘锦大米5KG</a>
										</div>
										<div class="p_Price">￥32.50</div>
									</li>
								</ul>
								<a class="sNext" href="javascript:void(0)">&gt;</a> <a href="#"
									class="more">更多收藏</a>
							</div>
							<div class="Collect_Products">
								<a class="sPrev" href="javascript:void(0)">&lt;</a>
								<ul>
									<li>
										<div class="pic">
											<a href=""><img src="${basePath }Products/P_29.jpg"></a>
										</div>
										<div class="title">
											<a href="#">金龙鱼 东北大米 蟹稻共生 盘锦大米5KG</a>
										</div>
										<div class="shop_name">
											<span>收藏：234</span><a href="#">进入店铺</a>
										</div>
									</li>
									<li >
										<div class="pic">
											<a href=""><img src="${basePath }Products/P_19.jpg"></a>
										</div>
										<div class="title">
											<a href="#">金龙鱼 东北大米 蟹稻共生 盘锦大米5KG</a>
										</div>
										<div class="shop_name">
											<span>收藏：234</span><a href="#">进入店铺</a>
										</div>
									</li>
									<li>
										<div class="pic">
											<a href=""><img src="${basePath }Products/P_37.jpg"></a>
										</div>
										<div class="title">
											<a href="#">金龙鱼 东北大米 蟹稻共生 盘锦大米5KG</a>
										</div>
										<div class="shop_name">
											<span>收藏：234</span><a href="#">进入店铺</a>
										</div>
									</li>
									<li>
										<div class="pic">
											<a href=""><img src="${basePath }Products/P_24.jpg"></a>
										</div>
										<div class="title">
											<a href="#">金龙鱼 东北大米 蟹稻共生 盘锦大米5KG</a>
										</div>
										<div class="shop_name">
											<span>收藏：234</span><a href="#">进入店铺</a>
										</div>
									</li>
									<li>
										<div class="pic">
											<a href=""><img src="${basePath }Products/P_33.jpg"></a>
										</div>
										<div class="title">
											<a href="#">金龙鱼 东北大米 蟹稻共生 盘锦大米5KG</a>
										</div>
										<div class="shop_name">
											<span>收藏：234</span><a href="#">进入店铺</a>
										</div>
									</li>
									<li>
										<div class="pic">
											<a href=""><img src="${basePath }Products/P_29.jpg"></a>
										</div>
										<div class="title">
											<a href="#">金龙鱼 东北大米 蟹稻共生 盘锦大米5KG</a>
										</div>
										<div class="shop_name">
											<span>收藏：234</span><a href="#">进入店铺</a>
										</div>
									</li>
									<li>
										<div class="pic">
											<a href=""><img src="${basePath }Products/P_18.jpg"></a>
										</div>
										<div class="title">
											<a href="#">金龙鱼 东北大米 蟹稻共生 盘锦大米5KG</a>
										</div>
										<div class="shop_name">
											<span>收藏：234</span><a href="#">进入店铺</a>
										</div>
									</li>
									<li>
										<div class="pic">
											<a href=""><img src="${basePath }Products/P_17.jpg"></a>
										</div>
										<div class="title">
											<a href="#">金龙鱼 东北大米 蟹稻共生 盘锦大米5KG</a>
										</div>
										<div class="shop_name">
											<span>收藏：234</span><a href="#">进入店铺</a>
										</div>
									</li>
									<li>
										<div class="pic">
											<a href=""><img src="${basePath }Products/P_16.jpg"></a>
										</div>
										<div class="title">
											<a href="#">金龙鱼 东北大米 蟹稻共生 盘锦大米5KG</a>
										</div>
										<div class="shop_name">
											<span>收藏：234</span><a href="#">进入店铺</a>
										</div>
									</li>
									<li>
										<div class="pic">
											<a href=""><img src="${basePath }Products/P_12.jpg"></a>
										</div>
										<div class="title">
											<a href="#">三只松鼠旗舰店</a>
										</div>
										<div class="shop_name">
											<span>收藏：234</span><a href="#">进入店铺</a>
										</div>
									</li>
									<li>
										<div class="pic">
											<a href=""><img src="${basePath }Products/P_8.jpg"></a>
										</div>
										<div class="title">
											<a href="#">三只松鼠旗舰店</a>
										</div>
										<div class="shop_name">
											<span>收藏：234</span><a href="#">进入店铺</a>
										</div>
									</li>
									<li>
										<div class="pic">
											<a href=""><img src="${basePath }Products/P_11.jpg"></a>
										</div>
										<div class="title">
											<a href="#">店铺名称是什么</a>
										</div>
										<div class="shop_name">
											<span>收藏：234</span><a href="#">进入店铺</a>
										</div>
									</li>
								</ul>
								<a class="sNext" href="javascript:void(0)">&gt;</a> <a href="#"
									class="more">更多收藏</a>
							</div>
						</div>
					</div>
					<script type="text/javascript">
						/* 内层图片无缝滚动 */
						jQuery(".slideGroups .Collect_Products").slide({
							mainCell : "ul",
							vis : 5,
							prevCell : ".sPrev",
							nextCell : ".sNext",
							effect : "leftMarquee",
							interTime : 50,
							autoPlay : true,
							trigger : "click"
						});

						/* 外层tab切换 */
						jQuery(".slideGroups").slide({
							titCell : ".parHd li",
							mainCell : ".parBd",
							trigger : "click"
						});
					</script>
				</div>
				<!--结束-->
			</div>
			
		</div>
   </div>
</div>
	<!--网站地图-->
<jsp:include page="kj/bottom.jsp"></jsp:include>
</body>
</html>

