<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<jsp:include page="../kj/head.jsp" />
<title>店铺专区</title>
</head>

<body>
<jsp:include page="../kj/top.jsp" />
<!--店铺专区样式-->
<div class="Inside_pages clearfix">
<div class="left_style">
 <jsp:include page="../dp/left.jsp" />
</div>
<div class="right_style">
  <!--内容详细-->
   <div class="title_style"><em></em>店铺专区</div>
   <div class="content_style">
    <!--添加店铺-->
   <!-- <div class="add_shops">
     <h3>你好，目前你没有任何店铺！</h3>
     <a href="#">添加店铺</a>
    </div>-->
    <div class="Add_shop_style"><a href="${basePath }jsp/dp/shop-add.jsp" id="newShop"  class="New_Shop_btn">新增店铺</a></div>
    <div class="shops_list">
    
    <c:forEach items="${list }" var="l">
    	
    	<ul class="list_style">
      <li class="img_link"><a href="#"><img src="${basePath }imgages/${l.simage}" /></a><span class="status">审核通过</span></li>
      <li class="shopscontent">
       <a href="#" class="title">${l.shopname }</a>
       <p class="Introduction">${l.sjianjie }</p>
       <p class="shops_operating"><a href="${basePath }shop/shop_enter.action?shop.sid=${l.sid}" class="View_info">进入店铺</a><a href="${basePath }shop/shop_edit.action?shop.sid=${l.sid}" class="edit_shops">编辑店铺</a><a href="店铺公告.html" class="shops_Bulletin">店铺公告</a></p>
      </li>
     </ul>
    
    </c:forEach>
    
    
    <%--  <ul class="list_style">
      <li class="img_link"><a href="#"><img src="${basePath }images/shop_logo.jpg" /></a><span class="status">审核通过</span></li>
      <li class="shopscontent">
       <a href="#" class="title">${shop.size() }</a>
       <p class="Introduction">南京业祥科技发展有限公司成立于2003年，位于南京市风景秀丽的科技创新型科技园区----中山科技园。是安全技术防范领域的专业企业，集安全防范系统的设计研发、生产、销售及售后服务为一体的高科技企业。</p>
       <p class="shops_operating"><a href="#" class="View_info">查看详情</a><a href="${basePath }shop/shop_edit.action" class="edit_shops">编辑店铺</a><a href="店铺公告.html" class="shops_Bulletin">店铺公告</a></p>
      </li>
     </ul>
      <ul class="list_style">
      <li class="img_link"><a href="#"><img src="images/shop_logo.jpg" /></a><span class="status">审核中</span></li>
      <li class="shopscontent">
       <a href="#" class="title">江苏业祥科技股份有限公司</a>
       <p class="Introduction">南京业祥科技发展有限公司成立于2003年，位于南京市风景秀丽的科技创新型科技园区----中山科技园。是安全技术防范领域的专业企业，集安全防范系统的设计研发、生产、销售及售后服务为一体的高科技企业。</p>
       <p class="shops_operating"><a href="#" class="View_info">查看详情</a></p>
      </li>
     </ul>
      <ul class="list_style">
      <li class="img_link"><a href="#"><img src="images/shop_logo.jpg" /></a><span class="status">审核失败</span></li>
      <li class="shopscontent">
       <a href="#" class="title">江苏业祥科技股份有限公司</a>
       <p class="Introduction">南京业祥科技发展有限公司成立于2003年，位于南京市风景秀丽的科技创新型科技园区----中山科技园。是安全技术防范领域的专业企业，集安全防范系统的设计研发、生产、销售及售后服务为一体的高科技企业。</p>
       <p class="shops_operating"><a href="#" class="View_info">查看详情</a><a href="#" class="delete_shops">删除店铺</a></p>
      </li>
     </ul> --%>
    </div>
   </div>
</div>
</div>
<!--网站地图-->
<jsp:include page="../kj/bottom.jsp" />
</body>
</html>
