<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">    
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<jsp:include page="kj/head.jsp"></jsp:include>

<title>index</title>
</head>
<body>
<jsp:include page="kj/top.jsp"></jsp:include>
<!--广告幻灯片样式-->
   	<div id="slideBox" class="slideBox">
			<div class="hd">
				<ul class="smallUl"></ul>
			</div>
			<div class="bd">
				<ul>
					<li><a href="#" target="_blank"><div style="background:url(${basePath}AD/ad-1.jpg) no-repeat; background-position:center; width:100%; height:450px;"></div></a></li>
					<li><a href="#" target="_blank"><div style="background:url(${basePath}AD/ad-2.jpg) no-repeat; background-position:center ; width:100%; height:450px;"></div></a></li>
					<li><a href="#" target="_blank"><div style="background:url(${basePath}AD/ad-3.jpg) no-repeat rgb(226, 155, 197); background-position:center; width:100%; height:475px;"></div></a></li>
                    <li><a href="#" target="_blank"><div style="background:url(${basePath}AD/ad-7.jpg) no-repeat #f7ddea; background-position:center; width:100%; height:450px;"></div></a></li>
                    <li><a href="#" target="_blank"><div style="background:url(${basePath}AD/ad-6.jpg) no-repeat  #F60; background-position:center; width:100%; height:450px;"></div></a></li>
				</ul>
			</div>
			<!-- 下面是前/后按钮-->
			<a class="prev" href="javascript:void(0)"></a>
			<a class="next" href="javascript:void(0)"></a>

		</div>
		<script type="text/javascript">
		jQuery(".slideBox").slide({titCell:".hd ul",mainCell:".bd ul",autoPlay:true,autoPage:true});
		</script>
<!--内容样式-->

<div id="mian">
 <div class="clearfix marginbottom">
 <!--产品分类样式-->
  <div class="Menu_style" id="allSortOuterbox">
   <div class="title_name"><em></em>所有商品分类</div>
   <div class="content hd_allsort_out_box_new">
 
    <ul class="Menu_list">
      <c:forEach items="${clist }" var="c">
  	   <li class="name">
		<div class="Menu_name"><a href="../product_list.html" >${c.name }</a> <span>&lt;</span></div>
		<div class="link_name">
		  <p>
          <c:forEach items="${c.c2set }" var="c2" >
         
           <a href="Product_Detailed.html">${c2.name }</a> | 
          
          </c:forEach>
          </p>
		</div>
		<div class="menv_Detail">
		 <div class="cat_pannel clearfix">
		   <div class="hd_sort_list">
		    <c:forEach items="${c.c2set }" var="c2" >
         
            <c:forEach items="${c2.c3set }" var="c3" >
         
          <dl class="clearfix" data-tpc="1">
			 <dt><a href="#">${c3.name }<i>></i></a></dt>
			 <dd>
			  <c:forEach items="${c3.gset }" var="gset" >
         
               <a href="Product_Detailed.html">${gset.gname }</a> | 
          
          </c:forEach>
			 </dd> 
			</dl>
          
          </c:forEach>
          
          </c:forEach>
		    	   
		   </div><div class="Brands">
		  </div>
		  </div>
		  <!--品牌-->		  
		</div>		 
		</li>
     
  </c:forEach>
      
    </ul>
   </div>
  </div>
  <script>$("#allSortOuterbox").slide({ titCell:".Menu_list li",mainCell:".menv_Detail",	});</script>
  <!--产品栏切换-->
  <div class="product_list left">
  		<div class="slideGroup">
			<div class="parHd">
				<ul><li>新品上市</li><li>超值特惠</li><li>本期团购</li><li>产品精选</li><li>抢先一步</li></ul>
			</div>
			<div class="parBd">
					<div class="slideBoxs">
						<a class="sPrev" href="javascript:void(0)"></a>
						<ul>
							<li>
								<div class="pic"><a href="#" target="_blank"><img src="${basePath}products/p_11.jpg" /></a></div>
								<div class="title">
                                <a href="#" target="_blank" class="name">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a>
                                <h3><b>￥</b>23.00</h3>
                                </div>
							</li>
							<li>
								<div class="pic"><a href="#" target="_blank"><img src="${basePath}products/p_12.jpg" /></a></div>
								<div class="title">
                                <a href="#" target="_blank" class="name">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a>
                                <h3><b>￥</b>23.00</h3>
                                </div>
							</li>
							<li>
								<div class="pic"><a href="#" target="_blank"><img src="${basePath}products/p_13.jpg" /></a></div>
								<div class="title">
                                <a href="#" target="_blank" class="name">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a>
                                <h3><b>￥</b>23.00</h3>
                                </div>
							</li>
							<li>
								<div class="pic"><a href="#" target="_blank"><img src="${basePath}products/p_15.jpg" /></a></div>
								<div class="title">
                                <a href="#" target="_blank" class="name">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a>
                                <h3><b>￥</b>23.00</h3>
                                </div>
							</li>
						</ul>
						<a class="sNext" href="javascript:void(0)"></a>
					</div><!-- slideBox End -->

					<div class="slideBoxs">
						<a class="sPrev" href="javascript:void(0)"></a>
						<ul>
							<li>
								<div class="pic"><a href="#" target="_blank"><img src="${basePath}products/p_15.jpg" /></a></div>
								<div class="title">
                                <a href="#" target="_blank" class="name">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a>
                                <h3><b>￥</b>23.00</h3>
                                </div>
							</li>
							<li>
								<div class="pic"><a href="#" target="_blank"><img src="${basePath}products/p_15.jpg" /></a></div>
								<div class="title">
                                <a href="#" target="_blank" class="name">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a>
                                <h3><b>￥</b>23.00</h3>
                                </div>
							</li>
							<li>
								<div class="pic"><a href="#" target="_blank"><img src="${basePath}products/p_34.jpg" /></a></div>
								<div class="title">
                                <a href="#" target="_blank" class="name">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a>
                                <h3><b>￥</b>23.00</h3>
                                </div>
							</li>
							<li>
								<div class="pic"><a href="#" target="_blank"><img src="${basePath}products/p_58.jpg" /></a></div>
								<div class="title">
                                <a href="#" target="_blank" class="name">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a>
                                <h3><b>￥</b>23.00</h3>
                                </div>
							</li>
						</ul>
						<a class="sNext" href="javascript:void(0)"></a>
					</div><!-- slideBox End -->

					<div class="slideBoxs">
						<a class="sPrev" href="javascript:void(0)"></a>
						<ul>
							<li>
								<div class="pic"><a href="#" target="_blank"><img src="${basePath}products/p_57.jpg" /></a></div>
								<div class="title">
                                <a href="#" target="_blank" class="name">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a>
                                <h3><b>￥</b>23.00</h3>
                                </div>
							</li>
							<li>
								<div class="pic"><a href="#" target="_blank"><img src="${basePath}products/p_56.jpg" /></a></div>
								<div class="title">
                                <a href="#" target="_blank" class="name">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a>
                                <h3><b>￥</b>23.00</h3>
                                </div>
							</li>
							<li>
								<div class="pic"><a href="#" target="_blank"><img src="${basePath}products/p_54.jpg" /></a></div>
								<div class="title">
                                <a href="#" target="_blank" class="name">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a>
                                <h3><b>￥</b>23.00</h3>
                                </div>
							</li>
							<li>
								<div class="pic"><a href="#" target="_blank"><img src="${basePath}products/p_55.jpg" /></a></div>
								<div class="title">
                                <a href="#" target="_blank" class="name">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a>
                                <h3><b>￥</b>23.00</h3>
                                </div>
							</li>
						</ul>
						<a class="sNext" href="javascript:void(0)"></a>
					</div><!-- slideBox End -->
                    	<div class="slideBoxs">
						<a class="sPrev" href="javascript:void(0)"></a>
						<ul>
							<li>
								<div class="pic"><a href="#" target="_blank"><img src="${basePath}products/p_50.jpg" /></a></div>
								<div class="title">
                                <a href="#" target="_blank" class="name">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a>
                                <h3><b>￥</b>23.00</h3>
                                </div>
							</li>
							<li>
								<div class="pic"><a href="#" target="_blank"><img src="${basePath}products/p_51.jpg" /></a></div>
								<div class="title">
                                <a href="#" target="_blank" class="name">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a>
                                <h3><b>￥</b>23.00</h3>
                                </div>
							</li>
							<li>
								<div class="pic"><a href="#" target="_blank"><img src="${basePath}products/p_52.jpg" /></a></div>
								<div class="title">
                                <a href="#" target="_blank" class="name">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a>
                                <h3><b>￥</b>23.00</h3>
                                </div>
							</li>
							<li>
								<div class="pic"><a href="#" target="_blank"><img src="${basePath}products/p_53.jpg" /></a></div>
								<div class="title">
                                <a href="#" target="_blank" class="name">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a>
                                <h3><b>￥</b>23.00</h3>
                                </div>
							</li>
						</ul>
						<a class="sNext" href="javascript:void(0)"></a>
					</div><!-- slideBox End -->
                    	<div class="slideBoxs">
						<a class="sPrev" href="javascript:void(0)"></a>
						<ul>
							<li>
								<div class="pic"><a href="#" target="_blank"><img src="${basePath}products/p_15.jpg" /></a></div>
								<div class="title">
                                <a href="#" target="_blank" class="name">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a>
                                <h3><b>￥</b>23.00</h3>
                                </div>
							</li>
							<li>
								<div class="pic"><a href="#" target="_blank"><img src="${basePath}products/p_17.jpg" /></a></div>
								<div class="title">
                                <a href="#" target="_blank" class="name">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a>
                                <h3><b>￥</b>23.00</h3>
                                </div>
							</li>
							<li>
								<div class="pic"><a href="#" target="_blank"><img src="${basePath}products/p_16.jpg" /></a></div>
								<div class="title">
                                <a href="#" target="_blank" class="name">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a>
                                <h3><b>￥</b>23.00</h3>
                                </div>
							</li>
							<li>
								<div class="pic"><a href="#" target="_blank"><img src="${basePath}products/p_19.jpg" /></a></div>
								<div class="title">
                                <a href="#" target="_blank" class="name">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a>
                                <h3><b>￥</b>23.00</h3>
                                </div>
							</li>
						</ul>
						<a class="sNext" href="javascript:void(0)"></a>
					</div><!-- slideBox End -->

			</div><!-- parBd End -->
		</div>
        <script type="text/javascript">
			/* 内层图片无缝滚动 */
			jQuery(".slideGroup .slideBoxs").slide({ mainCell:"ul",vis:4,prevCell:".sPrev",nextCell:".sNext",effect:"leftMarquee",interTime:50,autoPlay:true,trigger:"click"});
			/* 外层tab切换 */
			jQuery(".slideGroup").slide({titCell:".parHd li",mainCell:".parBd"});
		</script>
        <!--广告样式-->
        <div class="Ads_style"><a href="#"><img src="${basePath}images/AD_03.png"  width="318"/></a><a href="#"><img src="${basePath}images/AD_04.png" width="318"/></a><a href="#"><img src="${basePath}images/AD_06.png" width="318"/></a></div>
  </div>
 </div>
 <!--板块栏目样式-->
 <jsp:include page="kj/bankuai.jsp"></jsp:include>
 <!--友情链接-->
 <div class="link_style clearfix">
 <div class="title">友情链接</div>
 <div class="link_name">
  <a href="#"><img src="${basePath}products/logo/34.jpg"  width="100"/></a>
  <a href="#"><img src="${basePath}products/logo/34.jpg"  width="100"/></a>
  <a href="#"><img src="${basePath}products/logo/34.jpg"  width="100"/></a>
  <a href="#"><img src="${basePath}products/logo/34.jpg"  width="100"/></a>
  <a href="#"><img src="${basePath}products/logo/34.jpg"  width="100"/></a>
  <a href="#"><img src="${basePath}products/logo/34.jpg"  width="100"/></a>

 </div>
 </div>
</div>
<!--网站地图-->
<jsp:include page="kj/bottom.jsp"></jsp:include>
 <!--右侧菜单栏购物车样式-->
<jsp:include page="kj/kefu.jsp"></jsp:include>

</body>
</html>