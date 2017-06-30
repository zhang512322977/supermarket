<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<jsp:include page="kj/head.jsp" />
<title>消费记录</title>
</head>

<body>
<jsp:include page="kj/top.jsp" />
<!--用户中心样式-->
<div class="user_style clearfix">
 <div class="user_center clearfix">
 <!--消费记录样式-->
  <div class="left_style">
  <jsp:include page="kj/user-left.jsp" ></jsp:include>
  </div>
 <!--右侧样式属性-->
 <div class="right_style">
 <!--消费记录样式-->
  <div class="user_address_style">
    <div class="title_style"><em></em>消费记录</div> 
    <div class="Exp_record_style">
    <div class="record_filter">
     <a href="#">购买消费记录</a>
     <a href="#">充值记录</a>     
    </div>
   <!--  <div class="prompt_xinxi">暂无任何消费记录</div>-->
      <table cellpadding="0"  cellspacing="0"  width="100%" class="record_list">
       <thead><tr class="label_name"><td width="20%">创建时间</td><td width="20%">交易号</td><td width="20%">名称</td><td width="10%">金额</td><td width="10%">状态</td><td width="20%">操作</td></tr></thead>
       <tbody>
        <tr class="content"><td>2016-4-12 23:34:12</td><td>ED201604121010</td><td>消费</td><td><b class="xf">-345.4</b></td><td>完成</td><td><a href="#">详细</a></td></tr>
        <tr class="content"><td>2016-4-12 23:34:12</td><td>ED201604121010</td><td>消费</td><td><b class="xf">-345.4</b></td><td>完成</td><td><a href="#">详细</a></td></tr>
        <tr class="content"><td>2016-4-12 23:34:12</td><td>ED201604121010</td><td>充值</td><td><b class="cz">+345.4</b></td><td>完成</td><td><a href="#">详细</a></td></tr>
        <tr class="content"><td>2016-4-12 23:34:12</td><td>ED201604121010</td><td>消费</td><td><b class="xf">-345.4</b></td><td>完成</td><td><a href="#">详细</a></td></tr>
        <tr class="content"><td>2016-4-12 23:34:12</td><td>ED201604121010</td><td>消费</td><td><b class="xf">-345.4</b></td><td>完成</td><td><a href="#">详细</a></td></tr>
        <tr class="content"><td>2016-4-12 23:34:12</td><td>ED201604121010</td><td>充值</td><td><b class="cz">+345.4</b></td><td>完成</td><td><a href="#">详细</a></td></tr>
        <tr class="content"><td>2016-4-12 23:34:12</td><td>ED201604121010</td><td>消费</td><td><b class="xf">-345.4</b></td><td>完成</td><td><a href="#">详细</a></td></tr>
         <tr class="content"><td>2016-4-12 23:34:12</td><td>ED201604121010</td><td>消费</td><td><b class="xf">-345.4</b></td><td>完成</td><td><a href="#">详细</a></td></tr>
          <tr class="content"><td>2016-4-12 23:34:12</td><td>ED201604121010</td><td>消费</td><td><b class="xf">-345.4</b></td><td>完成</td><td><a href="#">详细</a></td></tr>
           <tr class="content"><td>2016-4-12 23:34:12</td><td>ED201604121010</td><td>充值</td><td><b class="cz">+10000</b></td><td>完成</td><td><a href="#">详细</a></td></tr>
           
       </tbody>
      </table>
    <div class="Pagination_tow">
      <div class="right">
      跳转到<select name="" size="1">
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
      </select><input type="submit" value="GO" class="btn_go" /> 共：345条</div>
      <div class="right">
      <a href="#">首页</a><a href="#">上一页</a><a href="#" class="digital">1</a><a href="#" class="digital">2</a><a href="#" class="digital">3</a><a href="#">下一页</a><a href="#">尾页</a>
     
      </div>
      </div>
    </div>
  </div>
 </div>
 </div>
 </div>
<jsp:include page="kj/bottom.jsp" />
</body>
</html>
