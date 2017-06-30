<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<jsp:include page="kj/head.jsp" />
<title>订单管理</title>
</head>

<body>
<jsp:include page="kj/top.jsp" />
<div class="user_style clearfix">
 <div class="user_center clearfix">
   <div class="left_style">
   <jsp:include page="kj/user-left.jsp" />
   </div>
 <!--右侧样式-->
  <div class="right_style">
  <div class="title_style"><em></em>订单管理</div> 
   <div class="Order_form_style">
      <div class="Order_form_filter">
       <a href="#" class="on">全部订单（23）</a>
       <a href="#" class="">代付款（2）</a>
       <a href="#" class="">代发货（3）</a>
       <a href="#" class="">待收货（5）</a>
       <a href="#" class="">退货/退款（0）</a>
       <a href="#" class="">交易成功（0）</a>
       <a href="#" class="">交易关闭（0）</a>
      </div>
      <div class="Order_Operation">
     <div class="left"> <label><input name="" type="checkbox" value=""  class="checkbox"/>全选</label> <input name="" type="submit" value="批量确认收货"  class="confirm_Order"/></div>
     <div class="right_search"><input name="" type="text"  class="add_Ordertext" placeholder="请输入产品标题或订单号进行搜索"/><input name="" type="submit" value="搜索订单"  class="search_order"/></div>
      </div>
      <div class="Order_form_list">
         <table>
         <thead>
          <tr><td class="list_name_title0">商品</td>
          <td class="list_name_title1">单价(元)</td>
          <td class="list_name_title2">数量</td>
          <td class="list_name_title4">实付款(元)</td>
          <td class="list_name_title5">订单状态</td>
          <td class="list_name_title6">操作</td>
         </tr>
         </thead> 
         <tbody>       
           <tr class="Order_info"><td colspan="6" class="Order_form_time"><input name="" type="checkbox" value=""  class="checkbox"/>下单时间：2015-12-3 | 订单号：445454654654654 <em></em></td></tr>
           <tr class="Order_Details">
           <td colspan="3">
           <table class="Order_product_style">
           <tbody>
           <tr>
           <td>
            <div class="product_name clearfix">
            <a href="#" class="product_img"><img src="Products/p_2.jpg" width="80px" height="80px"></a>
            <a href="3" class="p_name">天然绿色多汁香甜无污染水蜜桃</a>
            <p class="specification">礼盒装20个/盒</p>
            </div>
            </td>
            <td>5</td>
           <td>2</td>
            </tr>
            </tbody>
            </table>
           </td>   
           <td class="split_line">100</td>
           <td class="split_line"><p style="color:#F30">已发货，待收货</p></td>
           <td class="operating">
             <a href="#">查看订单</a>
             <a href="#">查看物流</a>
             <a href="#">联系客服</a>
             <a href="#">删除</a>
           </td>
           </tr>
           </tbody>
            <tbody>       
           <tr class="Order_info on"><td colspan="6" class="Order_form_time"><input name="" type="checkbox" value=""  class="checkbox"/>下单时间：2015-12-3 | 订单号：445454654654654</td></tr>
           <tr class="Order_Details" >
           <td colspan="3">
             <table class="Order_product_style">
           <tbody><tr>
           <td>
            <div class="product_name clearfix">
            <a href="#" class="product_img"><img src="Products/p_11.jpg" width="80px" height="80px"></a>
            <a href="3" class="p_name">天然绿色多汁香甜无污染水蜜桃</a>
            <p class="specification">礼盒装20个/盒</p>
            </div>
            </td>
             <td>5</td>
           <td>2</td>
           </tr>
           <tr>
           <td>
            <div class="product_name clearfix">
            <a href="#" class="product_img"><img src="Products/p_3.jpg" width="80px" height="80px"></a>
            <a href="3" class="p_name">天然绿色多汁香甜无污染水蜜桃</a>
            <p class="specification">礼盒装20个/盒</p>
            </div>
            </td>
             <td>5</td>
           <td>2</td>
            </tr>
            </tbody></table>          
           </td>         
           <td class="split_line">100</td>
           <td class="split_line"><p style="color:#F30">交易已成功</p><p style="color:#999">已评论</p></td>
           <td class="operating">
             <a href="#">查看订单</a>
             <a href="#">查看物流</a>
             <a href="#">申请售后</a>
             <a href="#">删除</a>            
           </td>
           </tr>
            </tbody>
            <tbody>       
           <tr class="Order_info"><td colspan="6" class="Order_form_time"><input name="" type="checkbox" value=""  class="checkbox"/>下单时间：2015-12-3 | 订单号：445454654654654</td></tr>
           <tr class="Order_Details" >
           <td colspan="3">
           <table class="Order_product_style">
           <tbody><tr>
           <td>
            <div class="product_name clearfix">
            <a href="#" class="product_img"><img src="Products/p_12.jpg" width="80px" height="80px"></a>
            <a href="3" class="p_name">天然绿色多汁香甜无污染水蜜桃</a>
            <p class="specification">礼盒装20个/盒</p>
            </div>
            </td>
            <td>5</td>
           <td>2</td>
            </tr>
            </tbody></table>
           </td>   
           <td class="split_line">100</td>
           <td class="split_line"><p style="color:#F33">买家已付款</p></td>
           <td class="operating">
                <a href="#">查看订单</a>
                <a href="#">在线客服</a>
                <a href="#" class="Delivery_btn">确认收货</a>            
           </td>
           </tr>
           </tbody>  
             <tbody>       
           <tr class="Order_info"><td colspan="6" class="Order_form_time"><input name="" type="checkbox" value=""  class="checkbox"/>下单时间：2015-12-3 | 订单号：445454654654654</td></tr>
           <tr class="Order_Details">
           <td colspan="3">
           <table class="Order_product_style">
           <tbody><tr>
           <td>
            <div class="product_name clearfix">
            <a href="#" class="product_img"><img src="Products/p_12.jpg" width="80px" height="80px"></a>
            <a href="3" class="p_name">天然绿色多汁香甜无污染水蜜桃</a>
            <p class="specification">礼盒装20个/盒</p>
            </div>
            </td>
            <td>5</td>
           <td>2</td>
            </tr>
            </tbody></table>
           </td>   
           <td class="split_line">100</td>
           <td class="split_line">等待买家付款</td>
           <td class="operating">
                <a href="#">查看详细</a>
                 <a href="#">查看物流</a>
                  <a href="#">取消订单</a>
             <a href="#">删除</a>
           </td>
           </tr>
           </tbody>    
             <tbody>       
           <tr class="Order_info"><td colspan="6" class="Order_form_time"><input tabindex="13" type="checkbox" id="flat-checkbox-1">下单时间：2015-12-3 | 订单号：445454654654654</td></tr>
           <tr class="Order_Details">
           <td colspan="3">
           <table class="Order_product_style">
           <tbody><tr>
           <td>
            <div class="product_name clearfix">
            <a href="#" class="product_img"><img src="Products/p_12.jpg" width="80px" height="80px"></a>
            <a href="3" class="p_name">天然绿色多汁香甜无污染水蜜桃</a>
            <p class="specification">礼盒装20个/盒</p>
            </div>
            </td>
            <td>5</td>
           <td>2</td>
            </tr>
            </tbody></table>
           </td>   
           <td class="split_line">100</td>
           <td class="split_line"><p style="color:#F33">确认收货</p><p style="color:#CCC">买家未评价</p></td>
           <td class="operating">
                <a href="#">查看详细</a>
                <a href="#">在线客服</a>
                <a href="#" class="Refund_btn">评价商品</a>
             
           </td>
           </tr>
           </tbody>            
         </table>
    </div>
     </div>
   </div>
   <script>
            $(document).ready(function(){
              $('.Order_form_style input').iCheck({
                checkboxClass: 'icheckbox_flat-green',
                radioClass: 'iradio_flat-green'
              });
            });
            </script>
  </div>
 </div>
</div>
<!--网站地图-->
<jsp:include page="kj/bottom.jsp" />
</body>
</html>
