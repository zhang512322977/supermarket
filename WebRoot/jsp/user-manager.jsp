<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<jsp:include page="kj/head.jsp" />
<title>用户中心-账户管理</title>
</head>

<body>
<jsp:include page="kj/top.jsp" />
<!--账户管理样式-->
<div class="user_style clearfix">
 <div class="user_center clearfix">
 <div class="left_style">
    <jsp:include page="kj/user-left.jsp" />
 </div>
 <!---->
   <div class="right_style">
  <div class="title_style"><em></em>账户管理</div> 
  <div class="user_Account_style">
   <div class="user_Account">
   <div class="title_name">我的账户余额：（小充钱包）</div>
   <div class="Balance clearfix">
    <p class="je_Balance">账户余额：<b><i>0</i></b>元 </p>
    <p class="clearfix Account_btn"><a href="#" class="Recharge_btn" id="Recharge_btn">充值</a><a href="#" class="withdraw_btn" id="cz_Records_btn">充值记录</a></p>
   </div>
   </div>
  </div>
  </div>
 </div>
</div>
  <script type="text/javascript">
         //弹出一个iframe层
$('#cz_Records_btn').on('click', function(){
    layer.open({
        type: 2,
        title: '充值记录',
        maxmin: true,
        shadeClose: true, //点击遮罩关闭层
        area : ['900px' , '450px'],
        content:'分销管理-提现账单.html'
    });
});</script>
<!--网站地图-->
<jsp:include page="kj/bottom.jsp" />
</body>
</html>
