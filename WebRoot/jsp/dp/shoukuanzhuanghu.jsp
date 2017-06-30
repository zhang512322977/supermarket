<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<jsp:include page="../kj/head.jsp" />

<title>收款账号</title>
</head>

<body>
<jsp:include page="../kj/top.jsp" />
<!--添加店铺样式-->
<div class="Inside_pages clearfix">
<div class="left_style">
  <!--列表-->
 <jsp:include page="../dp/left.jsp" /></jsp:include>
</div>
<!--右侧内容样式-->
<div class="right_style">
  <!--内容详细-->
   <div class="title_style"><em></em>收款账户</div>
   <div class="content_style">
   <!--收款账号-->
    <div class="Account_style clearfix">
    <div class="Account_prompt">只支持支付宝,银联和微信账号，每个账号只能为一个。</div>
    <!-- <div class="add_Bank_card"><a href="#" class="add_btn">设置收款银行卡</a></div>-->
     <div class="Bank_card clearfix">
      <div class="Bank_card_style add_Account">
        <a href="javascript:ovid(0)" class="aadd_Bank_btn btn" id="Alipay">支付宝账户</a>
      </div> 
      <div class="Bank_card_style">
        <div class="Alipay_zh">
         <span class="logo"><img src="images/zfb.jpg" /></span>
         <span class="bank_name">账户：133454534332</span>
         <span class="time">开通时间：2016-04-19</span>
        </div>
      </div>  
       <div class="Bank_card_style default">
       <div class="card_box_name">
       <span class="bank_logo"><img src="images/NTo2Wh8TF.png" /></span>
       <span class="bank_name">建设银行</span>
       <span class="bank_num4">尾号45343</span>
       <span class="card_type_CC card_type_DC"></span>
       </div>
       <div class="bank_operating"><a href="javascript:ovid(0)" class="left account_info">查看</a><a href="#" class="right">删除</a></div>
       <div class="bank_default">默认收款账户</div>
      </div>
       <div class="Bank_card_style add_Account">
       <a href="javascript:ovid(0)" class="aadd_Bank_btn btn" id="UnionPay">银联账户</a>
      </div>
       <div class="Bank_card_style add_Account">
       <a href="javascript:ovid(0)" class="aadd_Bank_btn btn" id="WeChat">微信账户</a>
      </div>    
     </div>    
    </div>
   </div>
 </div>
</div>
<div class="Account_bankstyle" id="Account_bank" style="display:none">
 <div class="addAccount_style">
  <ul class="UnionPay_style">  
   <li><label class="label_name">银行</label><select name="" size="1">
     <option value="1">中国建设银行</option>
     <option value="2">中国银行</option>
     <option value="3">中国工商银行</option>
     <option value="4">中国农业银行</option>
     <option value="5">中国招商银行</option>
     <option value="6">中国中信银行</option>
   </select></li>
   <li><label class="label_name">账户</label><input name="" type="text"  class="text" style=" width:300px;"/></li>
   <li><label class="label_name">姓名</label><input name="" type="text"  class="text"/></li>
   <li><label class="label_name">开户时间</label><input name="" type="text"  class="text inline laydate-icon" id="start" width="200px;"/></li>
   <li><button class="btn Opened_btn" type="button">点击开通</button></li>
  </ul>
  <!--支付宝账户-->
  <div class="Alipay_style">
    <div><label class="label_name">支付宝账户</label><input name="" type="text"  class="text" style=" width:300px"/></div>
    <button class="btn Opened_btn" type="button">点击开通</button>
  </div>
  <!--微信账户-->
  <div class="WeChat_style">
  <div><label class="label_name">微信账户</label><input name="" type="text"  class="text" style=" width:300px"/></div>
  <button class="btn Opened_btn" type="button">点击开通</button>
  </div>
  </div> 
</div>
<!--账户信息-->
<div id="account_info" class="acc_info_style" style="display:none">
 <ul class="list_info">
  <li><label class="label_name">开户银行</label><span>中国建设银行</span></li>
  <li><label class="label_name">开户账户</label><span>6226 4564 6789 345</span></li>
  <li><label class="label_name">姓名</label><span>张孝全</span></li>
  <li><label class="label_name">开通时间</label><span>2016年4月19日</span></li>
  <li><label class="label_name">限额</label><span>50万(单笔交易量最高为50万)</span></li>
 </ul>
</div>

<!--网站地图-->
<jsp:include page="../kj/bottom.jsp" />
<script type="text/javascript">
 $('.aadd_Bank_btn').on('click', function(){
    layer.open({
    type: 1,
	title:'添加账户',
	area: ['500px',''],
	shadeClose: true,
	content: $('#Account_bank')
    });
});
 $('.account_info').on('click', function(){
    layer.open({
    type: 1,
	title:'账户信息',
	area: ['600px',''],
	shadeClose: true,
	content: $('#account_info')
    });
});
$(".aadd_Bank_btn").bind("click",function(){
                var cid = $(this).attr("id");
				var cname = $(this).attr("title");
                $(".addAccount_style").attr("id",cid).ready();
				$("#Bcrumbs").attr("href",cid).ready();
				$(".Current_page").html(cname).ready();
				
				
      });
laydate({
    elem: '#start', //目标元素'
    event: 'focus' //响应事件。
});
</script>
</body>
</html>
