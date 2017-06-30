<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<jsp:include page="kj/head.jsp" />
 <script type="text/javascript">
      	var list_url = "${basePath}catagroy/catagroy_get2.action";
    	//搜索
      	function doSearch(){
      		//重置页号
      		$("#pageNo").val(1);
      		document.forms[0].action = list_url;
      		document.forms[0].submit();
      	}
    </script>
<title>商品二级分类</title>
</head>

<body>
<jsp:include page="kj/top.jsp" />
<!--商品专区-->
<div class="Inside_pages clearfix">
<div class="left_style">
<!--列表-->
 	<jsp:include page="dp/left.jsp" />
</div>
<!--内容-->
<div class="right_style">
  <!--内容详细-->
   <div class="title_style"><em></em>商品专区</div>
   <div class="content_style">
    <div class="Products_area_style">
     <div class="Add_product_style"><a href="${basePath }jsp/dp/good/good-add.jsp" class="Add_btn">发布商品</a> <a href="#">公共商品库下载</a></div>
     <div class="Search_Add">
     <form action="${basePath }catagroy/catagroy_add2.action" method="post">
      <input name="catagroy2.name" type="text"  placeholder="分类名称" class="add_text"/>
       <input name="dengji" type="hidden"  value="2" />
        <input name="catagroy.caid" type="hidden"  value="${catagroy.caid }" />
      <input  type="submit" value="添加分类"  class="Search_btn"/>
      <font color="red"> ${msg }</font>
      </form>
     </div>
     <div class="Products_list_style">
  <form name="form1" action="" method="post" enctype="multipart/form-data">
      <table>
       <thead>
        <tr class="title">
         <td class="checkbox_style"><input name="" type="checkbox" value="" /></td>
         <td class="title_name">二级分类id</td>
         <td class="inventory">二级分类名称</td>
         <td class="status">三级分类数</td>
         <td class="operating">操作</td>
         </tr>
        </thead>
       <tbody>
       
       <c:forEach items="${c2set}" var="g" >
       
        <tr>
          <td><input name="" type="checkbox" value="" /></td>
          <td><a href="${basePath }catagroy/catagroy_get3.action?catagroy2.c2id=${g.c2id}&catagroy.caid=${catagroy.caid }">${g.c2id}</a></td>
          <td><a href="${basePath }catagroy/catagroy_get3.action?catagroy2.c2id=${g.c2id}&catagroy.caid=${catagroy.caid }">${g.name }</a></td>
          <td>${g.num}</td>
          <td class="operating_btn relative">
           <div class="inventory_style">
              <input name="" type="text"  class="add_Number"/><input name="1"  type="submit" value="确认" class="confirm_btn" /> <a href="#" class="cancel"><em class="cancel-icon"></em></a>
           </div>
          <a href="#" class="fzxx_btn">复制信息</a><a href="商品专区-评价管理.html" class="pjgl_btn">评价管理</a><a href="#" class="szkc_btn">设置库存</a><a href="${basePath }catagroy/catagroy_delete2.action?catagroy2.c2id=${g.c2id}" class="sj_btn">删除</a></td>
        </tr>
       </c:forEach>
       
       
     <!--    <tr>
          <td><input name="" type="checkbox" value="" /></td>
          <td><a href="#">悦含小凳子便携小马扎钓鱼凳子牛津布地铁火车小板凳折叠凳</a></td>
          <td>3456</td>
          <td>审核失败</td>
          <td class="operating_btn relative">
           <div class="inventory_style">
              <input name="" type="text"  class="add_Number"/><input name="1"  type="submit" value="确认" class="confirm_btn" /> <a href="#" class="cancel"><em class="cancel-icon"></em></a>
           </div>
          <a href="#" class="fzxx_btn">复制信息</a><a href="商品专区-评价管理.html" class="pjgl_btn">评价管理</a><a href="#" class="szkc_btn">设置库存</a><a href="#" class="sj_btn">删除</a></td>
        </tr>
          <tr>
          <td><input name="" type="checkbox" value="" /></td>
          <td><a href="#">悦含小凳子便携小马扎钓鱼凳子牛津布地铁火车小板凳折叠凳</a></td>
          <td>3456</td>
          <td>审核失败</td>
          <td class="operating_btn relative">
          <div class="inventory_style">
              <input name="" type="text"  class="add_Number"/><input name="1"  type="submit" value="确认" class="confirm_btn" /> <a href="#" class="cancel"><em class="cancel-icon"></em></a>
           </div>
          <a href="#" class="fzxx_btn">复制信息</a><a href="商品专区-评价管理.html" class="pjgl_btn">评价管理</a><a href="#" class="szkc_btn">设置库存</a><a href="#" class="sj_btn">删除</a></td>
        </tr>
          <tr>
          <td><input name="" type="checkbox" value="" /></td>
          <td><a href="#">悦含小凳子便携小马扎钓鱼凳子牛津布地铁火车小板凳折叠凳</a></td>
          <td>3456</td>
          <td>审核中</td>
          <td class="operating_btn relative">
          <div class="inventory_style">
              <input name="" type="text"  class="add_Number"/><input name="1"  type="submit" value="确认" class="confirm_btn" /> <a href="#" class="cancel"><em class="cancel-icon"></em></a>
           </div>
          <a href="#" class="fzxx_btn">复制信息</a><a href="商品专区-评价管理.html" class="pjgl_btn">评价管理</a><a href="#" class="szkc_btn">设置库存</a><a href="#" class="sj_btn" id="sj_btn">上架</a></td>
        </tr>
          <tr>
          <td><input name="" type="checkbox" value="" /></td>
          <td><a href="#">悦含小凳子便携小马扎钓鱼凳子牛津布地铁火车小板凳折叠凳</a></td>
          <td>3456</td>
          <td>审核中</td>
          <td class="operating_btn relative">
          <div class="inventory_style">
              <input name="" type="text"  class="add_Number"/><input name="1"  type="submit" value="确认" class="confirm_btn" /> <a href="#" class="cancel"><em class="cancel-icon"></em></a>
           </div>
          <a href="#" class="fzxx_btn">复制信息</a><a href="商品专区-评价管理.html" class="pjgl_btn">评价管理</a><a href="#" class="szkc_btn">设置库存</a><a href="#" class="sj_btn">上架</a></td>
        </tr>  <tr>
          <td><input name="" type="checkbox" value="" /></td>
          <td><a href="#">悦含小凳子便携小马扎钓鱼凳子牛津布地铁火车小板凳折叠凳</a></td>
          <td>3456</td>
          <td>有效</td>
          <td class="operating_btn relative">
           <div class="inventory_style">
              <input name="" type="text"  class="add_Number"/><input name="1"  type="submit" value="确认" class="confirm_btn" /> <a href="#" class="cancel"><em class="cancel-icon"></em></a>
           </div>
          <a href="#" class="fzxx_btn">复制信息</a><a href="商品专区-评价管理.html" class="pjgl_btn">评价管理</a><a href="#" class="szkc_btn">设置库存</a><a href="#" class="sj_btn">上架</a></td>
        </tr> -->
       </tbody>
      </table>
      	 <jsp:include page="kj/pageNavigator.jsp"/>
  </form>
      
     <!--  <div class="page_style">每页显示<select name="" size="1"> <option value="1">10</option></select>共3页 共28条，当前第1/3页 <a href="#">首页</a><a href="#">上一页</a><a href="#">下一页</a><a href="#">尾页</a></div> -->
     </div>
    </div>  
  </div>
 </div>

</div>
<!--网站地图-->
<jsp:include page="kj/bottom.jsp" />
</body>
</html>