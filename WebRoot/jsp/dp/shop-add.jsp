<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<jsp:include page="../kj/head.jsp" />
<title>添加店铺</title>
</head>
<body>
<jsp:include page="../kj/top.jsp" />
<!--添加店铺样式-->
<div class="Inside_pages clearfix">
<div class="left_style">
  <!--列表-->
 <jsp:include page="left.jsp" />
</div>
<!--右侧内容样式-->
<div class="right_style">
  <!--内容详细-->
   <div class="title_style"><em></em>添加店铺</div>
   <div class="content_style">
    <form name="form0" action="${basePath }shop/shop_add.action"
					id="form0" method="post" enctype="multipart/form-data">
					
   <ul class="add_shops_style">
 
    <li><label>店铺/公司名称：</label><div class="add_right_style">	<input name="shop.shopname" value="${shop.shopname }" type="text" class="text_name" /></div></li>
    <li><label>店铺/公司地址：</label><div class="add_right_style">  
      <!-- 暂无 港澳台 如需要可在city.json文件中添加-->
      <select id="province" name="province" onchange="doProvAndCityRelation();">
  　　　　　　　　<option id="choosePro"value="-1" >请选择您所在省份</option>
  　　　　　　</select>

      <select id="citys" name="city" onchange="doCityAndCountyRelation();">
 　　　　　　　　<option id='chooseCity' value='-1'>请选择您所在城市</option>
 　　　　　　</select>
  
      <select id="county" name="county">
 　　　　　　　　<option id='chooseCounty' value='-1'>请选择您所在区/县</option>
　　　　　　</select>
    <p><input name="xiangxi" type="text"  class="text_name"/></p>
    <p class="map_Callout">
                    	<a id="check_agreement" href="#" class="check_agreement">加入半小时经济圈</a>
                    	<input id="autoLoginCheck" type="hidden" />
                    	<a id="agreement_tips" class="auto_tips" style="">地图标注</a>
                        </p>
    </div></li>
    <li><label>店铺门面图标：</label><div class="add_right_style">
      <div class="Facade_img">
       <p class="prompt">上传店铺门面图片（该图片将展示在顶部）</p>
       <div class="Upload_img">
			<div class="file-uploader-wrap"> 
　　　　　　<input type="file" class="file-uploader" name="ShopFile" id="FileUploader"/> 
　　　　　　<div class="file-uploader-wrap-fake"> 
　　　　　　　　<input type="text" id="PathDisplayer" class="input-text" disabled="disabled" /> 
　　　　　　　　<a href="javascript:void(0)" class="link-btn" >选择文件</a> 
　　　　　　</div> 
             <a href="#" class="yaoqiu">图片像素要求</a>
		</div></div>
       <img  id="showimg" src="${basePath }imgages/${shop.simage}"  alt="预览图片"  class="Preview showimg"/> 
      </div>
    </div>
    </li>
    <li><label>店铺/公司LOGO：</label><div class="add_right_style"> 
    <div class="Facade_img">
       <p class="prompt">上传店铺LOGO</p>
       <div class="Upload_img">

	    <div class="file-uploader-wrap"> 
　　　　　　<input type="file" class="file-uploader" name="LogoFile" id="FileUploadera"/> 
　　　　　　<div class="file-uploader-wrap-fake"> 
　　　　　　　　<input type="text" id="PathDisplayera" class="input-text" disabled /> 
　　　　　　　　<a href="javascript:void(0)" class="link-btn" >选择文件</a> 
　　　　　　</div>
         <a href="#" class="yaoqiu">图片像素要求</a>
		</div>
        </div>
       <img  id="showimg" src="${basePath }imgages/${shop.limage}"  alt="预览图片"  class="Preview showimg1"/> 
      </div>
      </div>
     </li>
    <li><label>店铺/公司简介：</label><div class="add_right_style">
    <textarea name="shop.sjianjie" cols="" rows="" class="textarea"></textarea>
    </div></li>
    <li><label>店铺宣传图片：</label><div class="add_right_style">
        <table>
         <tr>
           <td colspan="3"><input type="submit" value="添加"  class="Add_btn"/><input type="submit" value="删除"  class="delete_btn"/></td></tr>
         <tr class="label"><td  colspan="2">上传图片</td><td>是否展示</td></tr>
         <tr><td><input name="" type="checkbox" value="" /></td>
         <td>
         <div class="file-uploader-wrap"> 
　　　　　　<input type="file" class="file-uploader" name="XxFile" id="FileUploaderb"/> 
　　　　　　<div class="file-uploader-wrap-fake"> 
　　　　　　<input type="text" id="PathDisplayerb" class="input-text" disabled /> 
　　　　　　　　<a href="javascript:void(0)" class="link-btn" >选择文件</a> 
　　　　　　</div> 
　　　　</div> 
</td><td><input name="" type="checkbox" value="" /></td></tr>
        </table>
    </div>
    </li>
  
<script type="text/javascript">
	$(".form0").change(function() {
						var objUrl = getObjectURL(this.files[0]);
						console.log("objUrl = " + objUrl);
						if (objUrl) {
							$(".showimg").attr("src", objUrl);
						}
					});
					//建立一個可存取到該file的url
					function getObjectURL(file) {
						var url = null;
						if (window.createObjectURL != undefined) { // basic
							url = window.createObjectURL(file);
						} else if (window.URL != undefined) { // mozilla(firefox)
							url = window.URL.createObjectURL(file);
						} else if (window.webkitURL != undefined) { // webkit or chrome
							url = window.webkitURL.createObjectURL(file);
						}
						return url;
					}
				</script>
   <a href="javascript:next()" class="Next_btn">下一步，填写店铺及公司资质</a>
				<script>
					function next() {

						$("#form0").submit();

					}
				</script>
   </ul>
     </form>
  </div>
  </div>
</div>
<!--网站地图-->
<jsp:include page="../kj/bottom.jsp" />
</body>
    <script type="text/javascript">
    window.onload = function(){ 
var fileUploader = document.getElementById('FileUploader'); 
var pathDisplayer = document.getElementById('PathDisplayer'); 
if(fileUploader.addEventListener){ 
fileUploader.addEventListener('change', fileUploaderChangeHandler, false); 
}else if(fileUploader.attachEvent){ 
fileUploader.attachEvent('onclick', fileUploaderClickHandler); 
}else{ 
fileUploader.onchange = fileUploaderChangeHandler; 
} 
function fileUploaderChangeHandler(){ 
pathDisplayer.value = fileUploader.value; 


} 
function fileUploaderClickHandler(){ 

fileUploaderChangeHandler(); 

} ;

var fileUploadera = document.getElementById('FileUploadera'); 
var pathDisplayera = document.getElementById('PathDisplayera'); 
if(fileUploadera.addEventListener){ 
fileUploadera.addEventListener('change', fileUploaderChangeHandlera, false); 
}else if(fileUploadera.attachEvent){ 
fileUploadera.attachEvent('onclick', fileUploaderClickHandlera); 
}else{ 
fileUploadera.onchange = fileUploaderChangeHandlera; 
} 
function fileUploaderChangeHandlera(){ 
pathDisplayera.value = fileUploadera.value; 
} 
function fileUploaderClickHandlera(){ 

fileUploaderChangeHandlera(); 

};

var fileUploaderb = document.getElementById('FileUploaderb'); 
var pathDisplayerb = document.getElementById('PathDisplayerb'); 
if(fileUploaderb.addEventListener){ 
	fileUploaderb.addEventListener('change', fileUploaderChangeHandlerb, false); 
}else if(fileUploaderb.attachEvent){ 
	fileUploaderb.attachEvent('onclick', fileUploaderClickHandlerb); 
}else{ 
	fileUploaderb.onchange = fileUploaderChangeHandlerb; 
} 
function fileUploaderChangeHandlerb(){ 
	pathDisplayerb.value = fileUploaderb.value; 
} 
function fileUploaderClickHandlerb(){ 

fileUploaderChangeHandlerb(); 

};

} </script>


</html>
