<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${basePath }css/common.css" rel="stylesheet" type="text/css" />
<link href="${basePath }css/style.css" rel="stylesheet" type="text/css" />
<link href="${basePath }css/jquery-labelauty.css" rel="stylesheet" type="text/css" />
<script src="${basePath }js/jquery-1.8.3.min.js" type="text/javascript"></script>
<script src="${basePath }js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
<script src="${basePath }js/common_js.js" type="text/javascript"></script>
<script src="${basePath }js/footer.js" type="text/javascript"></script>
<script src="${basePath }js/jquery-labelauty.js" type="text/javascript"></script>
<title>发布商品</title>
</head>

<body>
<jsp:include page="../../kj/top.jsp" />
<!--发布商品样式-->
<div class="Inside_pages clearfix">
 <div class="left_style">
<!--列表-->
  <jsp:include page="../left.jsp" />
</div>
<div class="right_style">
  <!--内容详细-->
   <div class="title_style"><em></em>发布商品<font color="red">${msg }</font></div>
    <div class="content_style">
     <div class="Release_product_style">
     <form action="${basePath }good/good_add.action" method="post" enctype="multipart/form-data" id="form0">
     <table cellpadding="0" cellspacing="0" width="100%">
      <tr>
       <td class="label">店铺/公司名称：</td><td>江苏业祥股份有限公司</td></tr> 
       <tr><td class="label">编辑商品标题：</td><td><input name="good.gname" type="text"  class="addtext"  style=" width:500px;"/></td></tr>
       <tr><td class="label">设置商品分类：</td><td> 
       <span>一级分类：</span><select name="caid" id="choosec1" onchange="loadcatagroy2();" size="1">
        　         <option id="choosePro"value="-1" >请选择一级分类</option>
      </select>
       <span>二级分类：</span><select name="c2id"  id="choosec2" onchange="loadcatagroy3();" size="1">
       　<option id='chooseCity' value='-1'>请选择您二级分类</option>
      </select>
       <span>三级分类：</span><select name="c3id"  id="choosec3" size="1">
       　<option id='chooseCounty' value='-1'>请选择您三级分类</option>
      </select></td></tr>
       <tr><td class="label">设置商品规格：</td><td>
      <!--  <ul class="Spec_style"><li>50ml</li><li>100ml</li><li>200ml</li><li>100g</li><li>1000g</li></ul> -->
       <div class="add_Spec">
       <a href="#" class="add_Spec_btn"><em class="icon_1"></em>添加规格标签</a><a href="#" class="jx_btn">继续添加</a><a href="#" class="delete_btn">删除</a>
       <!--添加标签隐藏层-->
       <div class="spec_label_style">
        <div class="jx_cz_spec"><a href="#">继续添加</a> <span>最多只能添加5张图片</span></div>
        <div class="tianjia_label">
         <em class="sprite-icon"></em>
        <input name="" type="text"  class="addtext"  style="width:300px;"/><input name="" type="submit" value="添加"  class="add_submit"/></div>
       </div>
       </div>
       <div class="Spec_label">
       <input name="checkbox1" type="checkbox" data-labelauty="6个装"/>
       <input name="checkbox2" type="checkbox" data-labelauty="12个装"/>
       <input name="checkbox3" type="checkbox" data-labelauty="24个装"/>
       <input name="checkbox4" type="checkbox" data-labelauty="红色"/>
       <input name="checkbox5" type="checkbox" data-labelauty="白色"/>
       <input name="checkbox6" type="checkbox" data-labelauty="6绿色"/>
       </div>
       </td>
       </tr>
       <tr><td class="label">商品销售价格：</td><td><input name="good.gprices" type="text"  class="addtext" style=" width:200px;"/></td></tr>
       <tr><td class="label">商品促销价格：</td><td><input name="cxprices" type="text"  class="addtext" style=" width:200px; float:left" /> <span class="add_integral">
                    	<a id="check_agreement" href="#" class="check_agreement">可抵用积分</a>
                    	<input id="autoLoginCheck" type="hidden" />
                    	<input id="agreement_tips" name="" type="text" class="auto_tips"  style=" width:100px; float:left"/>
                        </span></td></tr>
        <tr><td class="label">商品销售类别：</td><td><select name="xcatagroy" id="choose1"  size="1">
        　         <option id="choosePro1"value="-1" >请选择一级分类</option>
      </select>
      </td></tr>                
       <tr><td class="label">商品概要介绍：</td><td><textarea name="good.gaiyao" cols="" rows="" placeholder="商品的概要介绍。该介绍将出现在商品名称下方。" class="textarea"></textarea></td></tr>
       <tr><td class="label">商品宣传图片：</td><td>
       <table class="Publicize_img_style">
         <tr>
           <td colspan="2"><input type="submit" value="添加"  class="Add_btn"/><input type="submit" value="删除"  class="delete_btn"/></td></tr>
         <tr class="label"><td >上传图片</td><td>是否展示</td></tr>
         <tr>
         <td>
         <div class="file-uploader-wrap"> 
　　　　　　<input type="file" class="file-uploader" name="ImageFile" id="FileUploader"/> 
　　　　　　<div class="file-uploader-wrap-fake"> 
　　　　　　<input type="text" id="PathDisplayer" class="input-text" disabled /> 
　　　　　　　　<a href="javascript:void(0)" class="link-btn" >选择文件</a> 
　　　　　　</div> 
　　　　</div> 
</td><td><input name="" type="checkbox" value="" /></td></tr>
        </table>
       </td></tr>
       <tr><td class="label">商品详细介绍：</td><td>富文本编辑器</td></tr>
     </table>
     <a href="javascript:sb()" class="Next_btn">提交商品资料</a>
     </form>
     </div>
    </div>
  </div>
</div>
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
	
}
</script>
<script type="text/javascript">
function sb(){
	$("#form0").submit();
}
$(function(){
	$(':input').labelauty();
	loadcatagroy1();
	loadcatagroy11();
});
function loadcatagroy11(){
	
	 $.ajax({  
        type : "POST",  //提交方式  
        url : "${basePath}catagroy/catagroy_geta.action",//路径  
        data : {},//数据，这里使用的是Json格式进行传输  
        success : function(result) {//返回数据根据结果进行相应的处理
       	 var   p = eval("("+result+")");
        	//alert(result+"112");
       	  if(p!=null){
       		  if ( $("#choose1").children().length > 1) {
       			  $("#choose1").empty();
       			  }
       		  if ($("#choosePro1").length === 0) {
       			  $("#choose1").append("<option id='choosePro1' value='-1'>请选择一级分类</option>");
       		 }
       		  var sb = new StringBuffer();
       		 // alert(p);
       		  $.each(p,
       		    function(i, val) {
       		        sb.append("<option value='" + val.caid + "'>" + val.name + "</option>");
       		    });
       		  $("#choose1").append(sb.toString());
       		 // alert(sb.toString());
       		 }
       	
        }
    });  
}

function loadcatagroy1(){
	 $.ajax({  
         type : "POST",  //提交方式  
         url : "${basePath}catagroy/catagroy_geta.action",//路径  
         data : {},//数据，这里使用的是Json格式进行传输  
         success : function(result) {//返回数据根据结果进行相应的处理 
        	 var   p = eval("("+result+")");
        	  if(p!=null){
        		  if ( $("#choosec1").children().length > 1) {
        			  $("#choosec1").empty();
        			  }
        		  if ($("#choosePro").length === 0) {
        			  $("#choosec1").append("<option id='choosePro' value='-1'>请选择一级分类</option>");
        		 }
        		  var sb = new StringBuffer();
        		 // alert(p);
        		  $.each(p,
        		    function(i, val) {
        		        sb.append("<option value='" + val.caid + "'>" + val.name + "</option>");
        		    });
        		  $("#choosec1").append(sb.toString());
        		 // alert(sb.toString());
        		 }
        	
         }
     });  
}
 function loadcatagroy2(){
	 var c = $("#choosec1");
	 if ( $("#choosec2").children().length > 1) {
		  $("#choosec2").empty();
		  }
	  if ($("#chooseCity").length === 0) {
		  $("#choosec2").append("<option id='chooseCity' value='-1'>请选择二级分类</option>");
	 }
	  var city = $("#choosec3");     	
	  if (city.children().length > 1) {
	    city.empty();
	  }
	 if ($("#chooseCounty").length === 0) {
	  $("#choosec3").append("<option id='chooseCounty' value='-1'>请选择三级分类</option>");
 		}
	 $.ajax({  
        type : "POST",  //提交方式  
        url : "${basePath}catagroy/catagroy_getb.action?catagroy.caid="+c.val(),//路径  
        data : {  
        	//"catagroy.caid":c.val()
        },//数据，这里使用的是Json格式进行传输  
        success : function(result) {//返回数据根据结果进行相应的处理 
       	
       	   //alert(result);
       	  p = eval("("+result+")");
       	
       	  if(p!=null){
       			 
       		doProvAndCityRelation(p);
       		 }
       	
        }
    });  
} 

 function loadcatagroy3(){
	 var c = $("#choosec2");
	 var city = $("#choosec3");     	
		  if (city.children().length > 1) {
		    city.empty();
		  }
		 if ($("#chooseCounty").length === 0) {
		  $("#choosec3").append("<option id='chooseCounty' value='-1'>请选择三级分类</option>");
	 		}
	 $.ajax({  
        type : "POST",  //提交方式  
        url : "${basePath}catagroy/catagroy_getc.action",//路径  
        data : {  
        	"catagroy2.c2id":c.val()
        },//数据，这里使用的是Json格式进行传输  
        success : function(result) {//返回数据根据结果进行相应的处理 
       	
       	  // alert(result);
       	  p = eval("("+result+")");
       	  if(p!=null){
       		 var sb = new StringBuffer();
       		
       		  $.each(p,
       		    function(i, val) {
       			  sb.append("<option value='" + val.c3id + "'>" + val.name + "</option>");
       		    });
       		//alert(p);
       		  $("#choosec3").append(sb.toString());
       		 // alert(sb.toString());
       		 }
       	
        }
    });  
} 
 
 
 	function doProvAndCityRelation(p) {
	 
	  var sb = new StringBuffer();
	 
	  $.each(p,
	    function(i, val) {
		  sb.append("<option value='" + val.c2id + "'>" + val.name + "</option>");
	    });
	  $("#choosec2").append(sb.toString());
	 // alert(sb.toString());
	}  // 市值变化时 处理区/县

	function StringBuffer(str) {
	  var arr = [];
	  str = str || "";
	  var size = 0; // 存放数组大小
	  arr.push(str);
	  // 追加字符串
	  this.append = function(str1) {
	    arr.push(str1);
	    return this;
	  };
	  // 返回字符串
	  this.toString = function() {
	    return arr.join("");
	  };
	  // 清空 
	  this.clear = function(key) {
	    size = 0;
	    arr = [];
	  };
	  // 返回数组大小 
	  this.size = function() {
	    return size;
	  };
	  // 返回数组 
	  this.toArray = function() {
	    return buffer;
	  };
	  // 倒序返回字符串 
	  this.doReverse = function() {
	    var str = buffer.join('');
	    str = str.split('');
	    return str.reverse().join('');
	  };
	  } 
</script>
<!--网站地图-->
<jsp:include page="../../kj/bottom.jsp" />
</body>
</html>
