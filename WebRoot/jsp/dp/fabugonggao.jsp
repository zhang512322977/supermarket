<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<jsp:include page="../kj/head.jsp" />
<title>报表管理</title>
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
   <div class="title_style"><em></em>发布公告</div>
   <div class="content_style">
    <div class="add_Bulletin">
     <ul class="add_shops_style">
      <li><label>公告有效期：</label>
      <div class="add_right_style"> 
      <ul class="inline date_inline">
                <li class="inline laydate-icon" id="start" style="width:200px;"></li>
                <span style="margin:0px 10px;">至</span><li class="inline laydate-icon" id="end" style="width:200px;"></li>
            </ul></div></li>
      <li><label>公告内容：</label><div class="add_right_style"><textarea name="" cols="" rows="" class="textarea"></textarea></div></li>
      <li class="Bulletin_btn"><input name="" type="submit"  class="submit_btn "/><input name="2" type="reset" value="取消"  class="cancel_btn"/></li>
     </ul>
     </div>
   </div>
</div>

</div>
<!--网站地图-->
<jsp:include page="../kj/bottom.jsp" />
</body>
</html>
<script>
var start = {
    elem: '#start',
    format: 'YYYY/MM/DD hh:mm:ss',
    min: laydate.now(), //设定最小日期为当前日期
    max: '2099-06-16 23:59:59', //最大日期
    istime: true,
    istoday: false,
    choose: function(datas){
         end.min = datas; //开始日选好后，重置结束日的最小日期
         end.start = datas //将结束日的初始值设定为开始日
    }
};
var end = {
    elem: '#end',
    format: 'YYYY/MM/DD hh:mm:ss',
    min: laydate.now(),
    max: '2099-06-16 23:59:59',
    istime: true,
    istoday: false,
    choose: function(datas){
        start.max = datas; //结束日选好后，重置开始日的最大日期
    }
};
laydate(start);
laydate(end);
</script>
