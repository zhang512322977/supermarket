<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<jsp:include page="kj/head.jsp" />
<title>会员中心-我的收藏</title>
</head>

<body>
<jsp:include page="kj/top.jsp" />
<!--用户中心收藏样式-->
<div class="user_style clearfix">
 <div class="user_center clearfix">
     <div class="left_style">
   <jsp:include page="kj/user-left.jsp" />
 	</div>
 <!--收藏样式-->
  <div class="right_style">
  <div class="title_style"><em></em>我的收藏</div> 
  <div class="Favorites_slideTxtBox">
     <div class="hd"><ul><li>收藏的商品</li><li>收藏的店铺</li></ul></div>
     <div class="bd">
        <ul class="commodity_list clearfix">
         <div class="Number_Favorites">共收藏：23条</div>
         <div class="clearfix">
          <li class="collect_p">
         <em class="iconfont  delete"></em>
         <a href="#" class="buy_btn">立即购买</a>
       <div class="collect_info">
        <div class="img_link"> <a href="#" class="center "><img src="products/p_4.jpg" /></a></div>
        <dl class="xinxi">
         <dt><a href="#" class="name">施华蔻多效修护套包(600ml洗+600ml润+50ml膜)</a></dt>
         <dd><span class="Price"><b>￥</b>321.00</span><span class="collect_Amount"><i class="iconfont icon-shoucang"></i>345</span></dd>         
        </dl>
        </div>
       </li>
        <li class="collect_p">
          <em class="iconfont  delete" id=""></em>
           <a href="#" class="buy_btn">立即购买</a>
       <div class="collect_info">
        <div class="img_link"> <a href="#" class="center "><img src="${basePath }products/p_17.jpg" /></a></div>
        <dl class="xinxi">
         <dt><a href="#" class="name">施华蔻多效修护套包(600ml洗+600ml润+50ml膜)</a></dt>
         <dd><span class="Price"><b>￥</b>321.00</span><span class="collect_Amount"><i class="iconfont icon-shoucang"></i>345</span></dd>         
        </dl>
        </div>
       </li>
        <li class="collect_p">
          <em class="iconfont delete"></em>
           <a href="#" class="buy_btn">立即购买</a>
       <div class="collect_info">
        <div class="img_link"> <a href="#" class="center "><img src="${basePath }products/p_24.jpg" /></a></div>
        <dl class="xinxi">
         <dt><a href="#" class="name">施华蔻多效修护套包(600ml洗+600ml润+50ml膜)</a></dt>
         <dd><span class="Price"><b>￥</b>321.00</span><span class="collect_Amount"><i class="iconfont icon-shoucang"></i>345</span></dd>         
        </dl>
        </div>
       </li>
        <li class="collect_p">
          <em class="iconfont icon-close2 delete"></em>
           <a href="#" class="buy_btn">立即购买</a>
       <div class="collect_info">
        <div class="img_link"> <a href="#" class="center "><img src="${basePath }products/p_25.jpg" /></a></div>
        <dl class="xinxi">
         <dt><a href="#" class="name">施华蔻多效修护套包(600ml洗+600ml润+50ml膜)</a></dt>
         <dd><span class="Price"><b>￥</b>321.00</span><span class="collect_Amount"><i class="iconfont icon-shoucang"></i>345</span></dd>         
        </dl>
        </div>
       </li>
        <li class="collect_p">
          <em class="iconfont  delete"></em>
           <a href="#" class="buy_btn">立即购买</a>
       <div class="collect_info">
        <div class="img_link"> <a href="#" class="center "><img src="${basePath }products/p_29.jpg" /></a></div>
        <dl class="xinxi">
         <dt><a href="#" class="name">施华蔻多效修护套包(600ml洗+600ml润+50ml膜)</a></dt>
         <dd><span class="Price"><b>￥</b>321.00</span><span class="collect_Amount"><i class="iconfont icon-shoucang"></i>345</span></dd>         
        </dl>
        </div>
       </li>
        <li class="collect_p">
          <em class="iconfont  delete"></em>
           <a href="#" class="buy_btn">立即购买</a>
       <div class="collect_info">
        <div class="img_link"> <a href="#" class="center "><img src="${basePath }products/p_37.jpg" /></a></div>
        <dl class="xinxi">
         <dt><a href="#" class="name">施华蔻多效修护套包(600ml洗+600ml润+50ml膜)</a></dt>
         <dd><span class="Price"><b>￥</b>321.00</span><span class="collect_Amount"><i class="iconfont icon-shoucang"></i>345</span></dd>         
        </dl>
        </div>
       </li>
        <li class="collect_p">
          <em class="iconfont  delete"></em>
           <a href="#" class="buy_btn">立即购买</a>
       <div class="collect_info">
        <div class="img_link"> <a href="#" class="center "><img src="${basePath }products/p_21.jpg" /></a></div>
        <dl class="xinxi">
         <dt><a href="#" class="name">施华蔻多效修护套包(600ml洗+600ml润+50ml膜)</a></dt>
         <dd><span class="Price"><b>￥</b>321.00</span><span class="collect_Amount"><i class="iconfont icon-shoucang"></i>345</span></dd>         
        </dl>
        </div>
       </li>
        <li class="collect_p">
          <em class="iconfont  delete"></em>
           <a href="#" class="buy_btn">立即购买</a>
       <div class="collect_info">
        <div class="img_link"> <a href="#" class="center "><img src="${basePath }products/p_19.jpg" /></a></div>
        <dl class="xinxi">
         <dt><a href="#" class="name">施华蔻多效修护套包(600ml洗+600ml润+50ml膜)</a></dt>
         <dd><span class="Price"><b>￥</b>321.00</span><span class="collect_Amount"><i class="iconfont icon-shoucang"></i>345</span></dd>         
        </dl>
        </div>
       </li>
        <li class="collect_p">
          <em class="iconfont  delete"></em>
           <a href="#" class="buy_btn">立即购买</a>
       <div class="collect_info">
        <div class="img_link"> <a href="#" class="center "><img src="${basePath }products/p_18.jpg" /></a></div>
        <dl class="xinxi">
         <dt><a href="#" class="name">施华蔻多效修护套包(600ml洗+600ml润+50ml膜)</a></dt>
         <dd><span class="Price"><b>￥</b>321.00</span><span class="collect_Amount"><i class="iconfont icon-shoucang"></i>345</span></dd>         
        </dl>
        </div>
       </li>
        <li class="collect_p">
          <em class="iconfont  delete"></em>
           <a href="#" class="buy_btn">立即购买</a>
       <div class="collect_info">
        <div class="img_link"> <a href="#" class="center "><img src="${basePath }products/p_17.jpg"/></a></div>
        <dl class="xinxi">
         <dt><a href="#" class="name">施华蔻多效修护套包(600ml洗+600ml润+50ml膜)</a></dt>
         <dd><span class="Price"><b>￥</b>321.00</span><span class="collect_Amount"><i class="iconfont icon-shoucang"></i>345</span></dd>         
        </dl>
        </div>
       </li>
        <li class="collect_p">
          <em class="iconfont  delete"></em>
           <a href="#" class="buy_btn">立即购买</a>
       <div class="collect_info">
        <div class="img_link"> <a href="#" class="center "><img src="${basePath }products/p_17.jpg"/></a></div>
        <dl class="xinxi">
         <dt><a href="#" class="name">施华蔻多效修护套包(600ml洗+600ml润+50ml膜)</a></dt>
         <dd><span class="Price"><b>￥</b>321.00</span><span class="collect_Amount"><i class="iconfont icon-shoucang"></i>345</span></dd>         
        </dl>
        </div>
       </li>
        <li class="collect_p">
          <em class="iconfont  delete"></em>
           <a href="#" class="buy_btn">立即购买</a>
       <div class="collect_info">
        <div class="img_link"> <a href="#" class="center "><img src="${basePath }products/p_17.jpg"/></a></div>
        <dl class="xinxi">
         <dt><a href="#" class="name">施华蔻多效修护套包(600ml洗+600ml润+50ml膜)</a></dt>
         <dd><span class="Price"><b>￥</b>321.00</span><span class="collect_Amount"><i class="iconfont icon-shoucang"></i>345</span></dd>         
        </dl>
        </div>
       </li>
       </div>
       <div class="Paging">
    <div class="Pagination">
    <a href="#">首页</a>
     <a href="#" class="pn-prev disabled">&lt;上一页</a>
	 <a href="#" class="on">1</a>
	 <a href="#">2</a>
	 <a href="#">3</a>
	 <a href="#">4</a>
	 <a href="#">下一页&gt;</a>
	 <a href="#">尾页</a>	
     </div>
    </div>
        </ul>
        <ul class="Shops_list">
        <div class="Number_Favorites">共收藏：23家店铺</div>
        <li class="">
          <div class="shop_logo">
          
          </div>
          <div class="shop_content">
          
          </div>
        </li>
        </ul>
     </div>
   </div>
   <script>jQuery(".Favorites_slideTxtBox").slide({trigger:"click"});</script>
  </div>
 </div>
</div>
<!--网站地图-->
<jsp:include page="kj/bottom.jsp" />
</body>
</html>
