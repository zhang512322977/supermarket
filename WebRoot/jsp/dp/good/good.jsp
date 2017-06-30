<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<jsp:include page="../../kj/head.jsp" />
 <script type="text/javascript">
      	var list_url = "${basePath}good/good_getall.action";
    	//搜索
      	function doSearch(){
      		//重置页号
      		$("#pageNo").val(1);
      		document.forms[0].action = list_url;
      		document.forms[0].submit();
      	}
    </script>
<title>商品专区</title>
</head>

<body>
<jsp:include page="../../kj/top.jsp" />
<!--商品专区-->
<div class="Inside_pages clearfix">
<div class="left_style">
<!--列表-->
 	<jsp:include page="../left.jsp" />
</div>
<!--内容-->
<div class="right_style">
  <!--内容详细-->
  <form name="form1" action="" method="post" enctype="multipart/form-data">
   <div class="title_style"><em></em>商品专区</div>
   <div class="content_style">
    <div class="Products_area_style">
     <div class="Add_product_style"><a href="${basePath }jsp/dp/good/good-add.jsp" class="Add_btn">发布商品</a> <a href="#">公共商品库下载</a></div>
     <div class="Search_Add">
      <input name="" type="text"  placeholder="输入搜索关键字" class="add_text"/>
      <span>一级分类：</span><select name="" size="1">
        <option value="1">一级分类</option>
      </select>
       <span>二级分类：</span><select name="" size="1">
        <option value="2">二级分类</option>
      </select>
       <span>三级分类：</span><select name="" size="1">
        <option value="3">三级分类</option>
      </select>
       <span>审核状态：</span><select name="" size="1">
        <option value="1">审核通过</option>
        <option value="2">审核未通过</option>
        <option value="3">待审核</option>
      </select>
      <input name="" type="submit" value="搜索"  class="Search_btn"/>
     </div>
     <div class="Products_list_style">
      <table>
       <thead>
        <tr class="title">
         <td class="checkbox_style"><input name="" type="checkbox" value="" /></td>
         <td class="title_name">商品标题</td>
         <td class="inventory">商品库存</td>
         <td class="status">商品转态</td>
         <td class="operating">操作</td>
         </tr>
        </thead>
       <tbody>
       
       <c:forEach items="${ glist}" var="g" >
       
        <tr>
          <td><input name="" type="checkbox" value="" /></td>
          <td><a href="#">${g.gname}</a></td>
          <td>${g.num }</td>
          <td>审核失败</td>
          <td class="operating_btn relative">
           <div class="inventory_style">
              <input name="" type="text"  class="add_Number"/><input name="1"  type="submit" value="确认" class="confirm_btn" /> <a href="#" class="cancel"><em class="cancel-icon"></em></a>
           </div>
          <a href="#" class="fzxx_btn">复制信息</a><a href="商品专区-评价管理.html" class="pjgl_btn">评价管理</a><a href="#" class="szkc_btn">设置库存</a><a href="${basePath }good/good_delete.action?good.gid=${g.gid }" class="sj_btn">删除</a></td>
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
      	 <jsp:include page="../../kj/pageNavigator.jsp"/>
      
     <!--  <div class="page_style">每页显示<select name="" size="1"> <option value="1">10</option></select>共3页 共28条，当前第1/3页 <a href="#">首页</a><a href="#">上一页</a><a href="#">下一页</a><a href="#">尾页</a></div> -->
     </div>
    </div>  
  </div>
  </form>
 </div>

</div>
<!--网站地图-->
<jsp:include page="../../kj/bottom.jsp" />
</body>
</html>