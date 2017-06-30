<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
session.setAttribute("basePath", basePath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">    
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<title>注册</title>
<link href="../css/base.css" rel="stylesheet" type="text/css">
<link href="../css/css.css" rel="stylesheet" type="text/css">
<script src="../js/jquery-2.1.1.min.js"></script>
<style>
.tab {
	overflow: hidden;
	margin-top: 10px; margin-bottom:-1px;
}
.tab li {
	display: block;
	float: left;
	width: 100px;padding:10px 20px; cursor:pointer; border:1px solid #ccc; 
}
.tab li.on {
	background: #90B831; color:#FFF;padding:10px 20px;
}
.conlist {padding:10px; border:1px solid #ccc; width:300px;}
.conbox {
	padding:0px;
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
//输入校验
function check() {
	//获取表单数据
	var username = $("#username").val();
	var password = $("#password").val();
	var repaassword = $("#repaassword").val();
	var vcode = $("#vcode").val();
	//为空校验
	if(username==""||password==""||repaassword==""||vcode==""){
		alert("输入不能为空！！");
		return;
	}
	//长度校验
	
	//格式校验
	
	//密码和重复密码是否相同
	/* if(password!=repassword){
		alert("两次密码输入不同！！");
		return;
	} */
	
	//提交表单
	$("#zcform").submit();
}
//刷新验证码
function getvcode() {
	///alert(1);
	//$("#vcodeimg").src="${basePath}user/user_vCode.action?time="+new Date().getMilliseconds();
	var ele = document.getElementById("vcodeimg");
	ele.src = "${basePath}user/user_vCode.action?time="+new Date().getMilliseconds();
}
</script>
</head>
<body class="l-bg">
<div class="login-top">
    <div class="wrapper">
        <div class="fl font30">LOGO</div>
       <h2><font color="red">${msg}</font></h2>
        <div class="fr">您好，欢迎为生活充电在线！</div>
    </div>
</div>
<div class="l_main2">
    <div class="l_bttitle"> 
        <h2>注册</h2>
    </div>
    <div class="loginbox">
        <div class="tab">
            <ul>
                <li class="on" id="buy" onclick="buy()">我是买家</li>
                <li id="sale" onclick="sale()">我是卖家</li>
            </ul>
        </div>
        <div class="conlist">
        <!--注册表单-->
        <form action="${basePath }user/user_reg.action" method="post" id="zcform" >
        <input type="hidden" id="isadmin" name="isadmin" value="false" >
            <div class="conbox" style="display:block;">
               
                    <div class="fl res-text">用户名　：</div><div><input type="text" class="loginuser" id="username" name="user.username"></div>
               
             
                   <div class="fl res-text">密　码　：</div><div><input type="password" class="loginuser" id="password" name="user.password"></div>
               
              
                   <div class="fl res-text">确认密码：</div><div><input type="password" class="loginuser" id="repassword" name="repassword"></div>
         
                   <div class="fl res-text" >验证码　：</div>
                   <div class="fl"><input type="text" class="loginuser2" id="vcode" name="vcode"> <img alt="vcode" id="vcodeimg" src="${basePath}user/user_vCode.action"></div>
                   <div><a class="fl" href="javascript:void()" onclick="getvcode()">看不清，换一张</a></div>
                  
                   <!--<div class="fl same-code2">60秒后重新获取</div>-->
               
          
                    <input type="button" class="loginbtn"  value="注 册" onclick="check()">
                    <a type="button" class="loginbtn"  href="login.jsp"><font color="blue">去登陆</font></a>
            </div>
            </form>
            
        </div>
    </div>
</div>
</body>
</html>
