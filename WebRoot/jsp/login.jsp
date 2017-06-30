<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">    
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<title>登陆</title>
<link href="${basePath }css/base.css" rel="stylesheet" type="text/css">
<link href="${basePath }css/css.css" rel="stylesheet" type="text/css">
<script src="${basePath }js/jquery-2.1.1.min.js"></script>
<style>
.tab {
	overflow: hidden;
	margin-top: 20px; margin-bottom:-1px;
}
.tab li {
	display: block;
	float: left;
	width: 100px;padding:10px 20px; cursor:pointer; border:1px solid #ccc; 
}
.tab li.on {
	background: #90B831; color:#FFF;padding:10px 20px;
}
.conlist {padding:30px; border:1px solid #ccc; width:300px;}
.conbox {
	display: none;
}
</style>
<script>
//买家注册
function buy(){
$("#buy").click(function(){
	  $(this).addClass("on");
	  $("#sale").removeClass("on");
	 $("#isadmin").val("false");
 });}
 //卖家注册
function sale(){
$("#sale").click(function(){
	  $(this).addClass("on");
	  $("#buy").removeClass("on");
	  $("#isadmin").val("true");
});};
function check() {
	//获取表单数据
	var username = $("#username").val();
	var password = $("#password").val();
	
	
	//为空校验
	if(username==""||password==""){
		alert("输入不能为空！！");
		return;
	}
	//长度校验
	
	//格式校验

	
	//提交表单
	$("#zcform").submit();
}
</script>
</head>

<body>
<div class="login-top">
    <div class="wrapper">
        <div class="fl font30">LOGO</div>
        <div class="fr">您好，欢迎为生活充电在线！</div>
    </div>
</div>
<div class="l_main">
    <div class="l_bttitle2"> 
        <!-- <h2>登录</h2>-->
        <h2><a href="${basePath }index.jsp"> &lt; 返回首页</a></h2>
    </div>
    <div class="loginbox fl">
        <div class="tab">
            <ul>
               <li class="on" id="buy" onclick="buy()">我是买家</li>
                <li id="sale" onclick="sale()">我是卖家</li>
            </ul>
            
          </div>
       <div class="conlist">
        <!--登录表单-->
        <form action="${basePath }user/user_login.action" method="post" id="zcform" >
        <input type="hidden" id="isadmin" name="isadmin" value="false" >
            <div class="conbox" style="display:block;">
                <font color="red">${msg}</font>
                <p>
                    <input type="text" class="loginusername" name="user.username" >
                </p>
                <p>
                    <input type="password" class="loginuserpassword" name="user.password">
                </p>
                <p><span class="fl fntz14 margin-t10"><a href="${basePath }jsp/reg.jsp" style="color:#ff6000">立即注册</a></span><span class="fr fntz12 margin-t10"><a href="${basePath }jsp/findpsw.jsp">忘记密码？</a></span></p>
                <p>
                    <input type="button" class="loginbtn" value="登  录" onclick="check()">
                </p>
            </div>
            </form>
        </div>
    </div>
    
    <div class="fr margin-r100 margin-t45"><img src="${basePath }images/login-pic.jpg" width="507" height="325"></div>
</div>
</body>
</html>