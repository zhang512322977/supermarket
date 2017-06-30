<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<jsp:include page="../kj/head.jsp" />
<title>店铺公司资质</title>
</head>

<body>
<jsp:include page="../kj/top.jsp" />
<!--添加店铺样式-->
<div class="Inside_pages clearfix">
<div class="left_style">
<!--店铺公司资质-->
<!--列表-->
 	<jsp:include page="left.jsp" />
</div>
<!--右侧内容样式-->
<div class="right_style">
  <!--内容详细-->
   <div class="title_style"><em></em>添加店铺</div>
    <div class="content_style">
    <form name="form0" action="${basePath }shop/shop_next.action"
					id="form0" method="post" enctype="multipart/form-data">
      <ul class="add_shops_style">
    
      <li><label>经营范围：</label><div class="add_right_style"><select size="1" name="shop.jingYingFanWei"> <option value="1">选择经营范围</option><option value="2">日常用品</option></select></div></li>
      <li><label>营业法人身份证号码：</label><div class="add_right_style"><input name="shop.faRenShenFenHaoMa" type="text"  class="text_name"/></div></li>
      <li><label>营业法人身份证照片：</label><div class="add_right_style"><div id="up_btn" class="btn">
			<span>添加图片</span>
			<input id="photoimg" type="file" name="AFile" />
		</div><a href="#" class="yaoqiu" style="color:#F33">（图片像素等要求）</a></div></li>
      <li><label>营业执照：</label><div class="add_right_style"><div id="up_btn" class="btn">
			<span>添加图片</span>
			<input id="photoimg" type="file" name="BFile" />
		</div><a href="#" class="yaoqiu" style="color:#F33">（图片像素等要求）</a></div></li>
      <li><label>食品安全许可证：</label><div class="add_right_style"><div id="up_btn" class="btn">
			<span>添加图片</span>
			<input id="photoimg" type="file" name="CFile" />
		</div><a href="#" class="yaoqiu" style="color:#F33">（图片像素等要求）</a></div></li>
          
      </ul>
      
      <div class="submit_style"> <a href="#" class="Previous">&lt;&lt;上一步</a><input type="submit" value="提交店铺及公司资料"  class="submit_btn"/></div>
     </form>
    </div>   
  </div>
</div>
<!--网站地图-->
<jsp:include page="../kj/bottom.jsp" />
</body>
</html>
