<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<jsp:include page="../kj/head.jsp" />
</head>

<body>
<!--头部导航-->
<div class="nofix_head">
    <div class="top wrapper">
        <div class="float-lt margin-b10">
            <ul>
                <li><a href="" target="_blank" class=" colororange">请登录</a></li>
                <li><a href="" target="_blank">注册会员</a></li>
            </ul>
        </div>
        <div class="float-rt">
            <ul>
                <li><a href="" target="_blank">首页</a></li>
                <li><a href="">我的小充</a></li>
                <li><a id="linkOrder" href="">消息中心</a></li>
                <li><a href="">商品分类</a></li>
                <li>我的购物车<small class="num">20</small></li>
            </ul>
        </div>
    </div>
</div>
<!--头部导航END--> 

<!--头部快捷栏-->
<div class="clear wrapper header">
    <div class="logo float-lt" style="margin-right:130px;"><img src="${basePath }images/logo.png" width="193" height="97" /></div>
    <div class="search float-lt">
        <div class="search_list">
            <ul>
                <li class="current"><a href="#">产品</a></li>
                <li><a href="#">信息</a></li>
            </ul>
        </div>
        <div class="clear search_cur">
            <ul>
                <li>
                    <input name="searchName" id="searchName" class="search_box" onkeydown="keyDownSearch()" type="text" />
                </li>
            </ul>
            <ul>
                <li class="search_btn"><a href="product-list.html">搜索</a></li>
            </ul>
        </div>
        <div class="clear hotword">热门搜索词：香醋&nbsp;&nbsp;&nbsp;茶叶&nbsp;&nbsp;&nbsp;草莓&nbsp;&nbsp;&nbsp;葡萄&nbsp;&nbsp;&nbsp;菜油</div>
    </div>
    <div class="homecart float-rt">购物车<strong>(99)</strong></div>
</div>
<!--头部快捷栏END-->

<div class="clear">&nbsp;</div>

<!--网站头部-->
<div class="sup-wid">
	<div><img src="images/TB27.gif" width="100%"/></div>
    <div class="supplie-top">
        <div class="clear">
            <table width="100%" border="0" cellpadding="0" cellspacing="0" class="nav">
                <tr>
                    <td align="center"><a href="#">供应商首页</a></td>
                    <td align="center"><a href="#">全部产品</a></td>
                    <td align="center"><a href="#">企业介绍</a></td>
                    <td align="center"><a href="#">最新产品</a></td>
                    <td align="center"><a href="#">热销产品</a></td>
                    <td align="center"><a href="#">促销产品</a></td>
                </tr>
            </table>
        </div>
        <div class=" clear bread"><a href="#">首页</a> <span class="pipe">&gt;</span> <a href="#">某供应商</a> <span class="pipe">&gt;</span> <a href="#">某产品</a></div>
    </div>
    <div class="company-profile">
        <div class="logo">
        	<div><img src="images/shop_logo.jpg"  width="300" height="192"/></div>
            <div class="margin-l50 margin-t10">
            	<div class="shoucang"><img src="images/iconfont-shoucang.png" width="14" height="14" />收藏店铺</div>
                <div class="liuyan"><img src="images/iconfont-liuyan-alt.png" width="14" height="14" />给我留言</div>
            </div>
        </div>
        <div class="text-introduce"><span>江苏业祥科技股份有限公司</span>
            <p>南京业祥科技发展有限公司成立于2003年，位于南京市风景秀丽的科技创新型科技园区----中山科技园。是安全技术防范领域的专业企业；是安全技术防范领域的专业企业：集安全防范系统的设计研发、生产、销售及售后服务为一体的高科技企业。</p>
        </div>
    </div>
    <div class="mainbody">
        <div class="product-categories">
            <div class="title">产品分类</div>
            <div class="see-all">
                <div class="ck"><a href="#">查看所有产品</a></div>
                <ul class="fenlei">
                    <div class="pr_fenlei"><a href="#">茶叶</a></div>
                    <li><a href="#">金山翠牙</a></li>
                    <li><a href="#">金山翠牙</a></li>
                    <li><a href="#">金山翠牙</a></li>
                    <li><a href="#">金山翠牙</a></li>
                </ul>
                <ul class="fenlei">
                    <div class="pr_fenlei"><a href="#">茶叶</a></div>
                    <li><a href="#">金山翠芽</a></li>
                    <li><a href="#">金山翠芽</a></li>
                    <li><a href="#">金山翠牙</a></li>
                    <li><a href="#">金山翠牙</a></li>
                    <li><a href="#">金山翠牙</a></li>
                </ul>
            </div>
            <div class="sidebar2">
                <div class="title">产品推荐</div>
                <div class="see-all">
                    <ul class="item-recommend">
                        <li><a href="#"><img src="images/new-pro.jpg" width="172" height="150"  /></a></li>
                        <li><a href="#">茶叶研发基地，拥有完备手续的流转土地面积1.2万亩</a></li>
                        <li class="price">¥<strong>165</strong></li>
                    </ul>
                    <ul class="item-recommend">
                        <li><a href="#"><img src="images/new-pro.jpg" width="172" height="150"  /></a></li>
                        <li><a href="#">茶叶研发基地，拥有完备手续的流转土地面积1.2万亩</a></li>
                        <li>¥<strong>165</strong></li>
                    </ul>
                    <ul class="item-recommend">
                        <li><a href="#"><img src="images/new-pro.jpg" width="172" height="150"  /></a></li>
                        <li><a href="#">茶叶研发基地，拥有完备手续的流转土地面积1.2万亩</a></li>
                        <li>¥<strong>165</strong></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="new-pro">
            <div class="tit"><a href="">最新产品</a></div>
            <div class="item4line1">
                <ul>
                    <li><a href="#"><img src="images/new-pro.jpg" /></a></li>
                    <li><a href="#">2014年新茶叶 绿茶明前二级茅山长青</a></li>
                    <li class="price"><strong>¥268.00</strong> <span>已售：1122000斤</span></li>
                    <li><a href="#">评价（256）</a></li>
                </ul>
                <ul>
                    <li><a href="#"><img src="images/new-pro.jpg" /></a></li>
                    <li><a href="#">2014年新茶叶 绿茶明前二级茅山长青</a></li>
                    <li class="price"><strong>¥268.00</strong> <span>已售：1122000斤</span></li>
                    <li><a href="#">评价（256）</a></li>
                </ul>
                <ul>
                    <li><a href="#"><img src="images/new-pro.jpg" /></a></li>
                    <li><a href="#">2014年新茶叶 绿茶明前二级茅山长青</a></li>
                    <li class="price"><strong>¥268.00</strong> <span>已售：1122000斤</span></li>
                    <li><a href="#">评价（256）</a></li>
                </ul>
                <ul style="margin-right:0;">
                    <li><a href="#"><img src="images/new-pro.jpg" /></a></li>
                    <li><a href="#">2014年新茶叶 绿茶明前二级茅山长青</a></li>
                    <li class="price"><strong>¥268.00</strong> <span>已售：1122000斤</span></li>
                    <li><a href="#">评价（256）</a></li>
                </ul>
                <ul>
                    <li><a href="#"><img src="images/new-pro.jpg" /></a></li>
                    <li><a href="#">2014年新茶叶 绿茶明前二级茅山长青</a></li>
                    <li class="price"><strong>¥268.00</strong> <span>已售：1122000斤</span></li>
                    <li><a href="#">评价（256）</a></li>
                </ul>
                <ul>
                    <li><a href="#"><img src="images/new-pro.jpg" /></a></li>
                    <li><a href="#">2014年新茶叶 绿茶明前二级茅山长青</a></li>
                    <li class="price"><strong>¥268.00</strong> <span>已售：1122000斤</span></li>
                    <li><a href="#">评价（256）</a></li>
                </ul>
                <ul>
                    <li><a href="#"><img src="images/new-pro.jpg" /></a></li>
                    <li><a href="#">2014年新茶叶 绿茶明前二级茅山长青</a></li>
                    <li class="price"><strong>¥268.00</strong> <span>已售：1122000斤</span></li>
                    <li><a href="#">评价（256）</a></li>
                </ul>
                <ul style="margin-right:0;">
                    <li><a href="#"><img src="images/new-pro.jpg" /></a></li>
                    <li><a href="#">2014年新茶叶 绿茶明前二级茅山长青</a></li>
                    <li class="price"><strong>¥268.00</strong> <span>已售：1122000斤</span></li>
                    <li><a href="#">评价（256）</a></li>
                </ul>
            </div>
        </div>
        <div class="new-pro">
            <div class="tit"><a href="">热销产品</a></div>
            <div class="item4line1">
                <ul>
                    <li><a href="#"><img src="images/new-pro.jpg" /></a></li>
                    <li><a href="#">2014年新茶叶 绿茶明前二级茅山长青</a></li>
                    <li class="price"><strong>¥268.00</strong> <span>已售：1122000斤</span></li>
                    <li><a href="#">评价（256）</a></li>
                </ul>
                <ul>
                    <li><a href="#"><img src="images/new-pro.jpg" /></a></li>
                    <li><a href="#">2014年新茶叶 绿茶明前二级茅山长青</a></li>
                    <li class="price"><strong>¥268.00</strong> <span>已售：1122000斤</span></li>
                    <li><a href="#">评价（256）</a></li>
                </ul>
                <ul>
                    <li><a href="#"><img src="images/new-pro.jpg" /></a></li>
                    <li><a href="#">2014年新茶叶 绿茶明前二级茅山长青</a></li>
                    <li class="price"><strong>¥268.00</strong> <span>已售：1122000斤</span></li>
                    <li><a href="#">评价（256）</a></li>
                </ul>
                <ul style="margin-right:0;">
                    <li><a href="#"><img src="images/new-pro.jpg" /></a></li>
                    <li><a href="#">2014年新茶叶 绿茶明前二级茅山长青</a></li>
                    <li class="price"><strong>¥268.00</strong> <span>已售：1122000斤</span></li>
                    <li><a href="#">评价（256）</a></li>
                </ul>
                <ul>
                    <li><a href="#"><img src="images/new-pro.jpg" /></a></li>
                    <li><a href="#">2014年新茶叶 绿茶明前二级茅山长青</a></li>
                    <li class="price"><strong>¥268.00</strong> <span>已售：1122000斤</span></li>
                    <li><a href="#">评价（256）</a></li>
                </ul>
                <ul>
                    <li><a href="#"><img src="images/new-pro.jpg" /></a></li>
                    <li><a href="#">2014年新茶叶 绿茶明前二级茅山长青</a></li>
                    <li class="price"><strong>¥268.00</strong> <span>已售：1122000斤</span></li>
                    <li><a href="#">评价（256）</a></li>
                </ul>
                <ul>
                    <li><a href="#"><img src="images/new-pro.jpg" /></a></li>
                    <li><a href="#">2014年新茶叶 绿茶明前二级茅山长青</a></li>
                    <li class="price"><strong>¥268.00</strong> <span>已售：1122000斤</span></li>
                    <li><a href="#">评价（256）</a></li>
                </ul>
                <ul style="margin-right:0;">
                    <li><a href="#"><img src="images/new-pro.jpg" /></a></li>
                    <li><a href="#">2014年新茶叶 绿茶明前二级茅山长青</a></li>
                    <li class="price"><strong>¥268.00</strong> <span>已售：1122000斤</span></li>
                    <li><a href="#">评价（256）</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>



<!--网站地图-->
<div class="fri-link-bg">
    <div class="fri-link">
        <div class="logo float-lt margin-r20"><img src="images/fo-logo.jpg" width="152" height="81" /></div>
        <div class="float-lt"><img src="images/qd.jpg" width="90"  height="90" />
            <p>扫描下载APP</p>
        </div>
        <ul class="link-add float-lt ma">
            <li><a href="#" class="font14">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
        </ul>
        <ul class="link-add float-lt">
            <li><a href="#" class="font14">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
        </ul>
        <ul class="link-add float-lt">
            <li><a href="#" class="font14">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
        </ul>
        <ul class="link-add float-lt">
            <li><a href="#" class="font14">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
        </ul>
        <ul class="link-add float-lt">
            <li><a href="#" class="font14">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
        </ul>
        <ul class="link-add float-lt">
            <li><a href="#" class="font14">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
        </ul>
        <ul class="link-add float-lt">
            <li><a href="#" class="font14">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
            <li><a href="#">网站栏目</a></li>
        </ul>
    </div>
</div>
<!--网站地图END-->


<!--网站页脚-->
<div class="copyright">
    <div class="copyright-bg">
        <div class="hotline">为生活充电在线 <span>招商热线：****-********</span> 客服热线：400-******</div>
        <div class="hotline co-ph">
            <p>版权所有Copyright ©***************</p>
            <p>*ICP备***************号 不良信息举报</p>
            <p>总机电话：****-*********/194/195/196 客服电话：4000****** 传 真：********
                
                <a href="http://www.mycodes.net/" target="_blank">源码之家</a></p>
        </div>
    </div>
</div>
<!--网站页脚END-->
</body>
</html>
