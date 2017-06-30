<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<jsp:include page="../kj/head.jsp" />
<title>发货管理</title>
</head>

<body>
<jsp:include page="../kj/top.jsp" />
<!--发货管理样式-->
<div class="Inside_pages clearfix">
<div class="left_style">
  <!--列表-->
  <jsp:include page="../dp/left.jsp" />
</div>
<div class="right_style">
  <!--内容详细-->
   <div class="title_style"><em></em>发货管理</div>
   <div class="content_style">
     <!--发货管理-->
     <div class="Delivery_style">
       <div class="hd">
        <ul>
         <li>发货地址</li>
         <li>运费模板</li>
        </ul>
       </div>
       <div class="bd">
        <ul>
          <div class="add_address_style">
            <form id="form1" name="form1" method="post" action="">
           <div class="Note"><b>添加新地址：</b>电话号码、手机号码选择一项，公司和备注为选填项，其他为必填项。</div>
            <table cellpadding="0" cellspacing="0" width="100%" class="add_content">
             <tr>
              <td class="label">联&nbsp;&nbsp;系&nbsp;人：<i>*</i></td>
              <td><input name="" type="text"  class="addtext"/></td>
              </tr>
             <tr>
              <td class="label">所在地区：<i>*</i></td><td>
              <select size="1">
              <option value="1">请选择国家</option>
            </select>
             <select size="1">
              <option value="1">省</option>
            </select>
            <select size="1">
              <option value="2">市</option>
            </select>
            <select size="1">
              <option value="3">县/区</option>
            </select>
            </td>
            </tr>
             <tr><td class="label">街道地址：<i>*</i></td><td><input name="" type="text"  class="addtext"  style="width:300px"/></td></tr>
             <tr><td class="label">邮政编码：<i>*</i></td><td><input name="" type="text"  class="addtext"/></td></tr>
             <tr><td class="label">电话号码：</td><td><input name="" type="text"  class="addtext"/>-<input name="" type="text"  class="addtext"/>-<input name="" type="text"  class="addtext"/>区号-电话-分机号码</td></tr>
             <tr><td class="label">手机号码：</td><td><input name="" type="text"  class="addtext"/></td></tr>
             <tr><td class="label">公司名称：</td><td><input name="" type="text"  class="addtext"/></td></tr>
             <tr><td class="label">备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注：</td><td><textarea name="" cols="" rows=""></textarea></td></tr>
             <tr><td colspan="2" class="center">  <input name="" type="submit" value="保存设置"  class="save_addressbtn"/></td></tr>
            </table>
            <div class="user_Remark">用来保存自己的发货，退货地址，用户最多只能添加20个地址。</div>  
             <table class="display_address">
             <thead>
              <tr class="label_name">
               <td class="label_0" width="60px">发货地址</td>
               <td class="label_1" width="60px">退货地址</td>
               <td class="label_2" width="60px">联系人</td>
               <td class="label_3" width="180px">所在地区</td>
               <td class="label_4" width="180px">街道地址</td>
               <td class="label_5" width="60px">邮政编码</td>
               <td class="label_6" width="100px">联系电话</td>
               <td class="label_7" width="100px">手机号码</td>
               <td class="label_8" width="100px">备注</td>
               <td class="label_9" width="100px">操作</td>
               </tr>
             </thead>
              
             <tbody>
              <tr><td><label><input name="" type="radio" name="RadioGroup1" value="1" id="RadioGroup1_0" />默认</label></td><td><label><input name="" type="radio" value="" />默认</label></td><td>张小泉</td><td>中国江苏南京雨花台区</td><td>郁金香路2号3栋2单元302室</td><td>210000</td><td></td><td>135435464544</td><td></td><td><a href="#">编辑</a><a href="#">删除</a></td></tr>
               <tr><td><label><input name="" type="radio" name="RadioGroup1" value="1" id="RadioGroup1_0"/>默认</label></td><td><label><input name="" type="radio" value="" />默认</label></td><td>张小泉</td><td>中国江苏南京雨花台区</td><td>郁金香路2号3栋2单元302室</td><td>210000</td><td></td><td>135435464544</td><td></td><td><a href="#">编辑</a><a href="#">删除</a></td></tr>
             </tbody>
             </table> 
                 
          </div>
        </ul>
         <!--运费模板-->
        <div class="Freight_template">
         <div class="add_yunfei">
           <div class="mb_prompt">你还没有创建任何模板，请点击下运费面创建模板。</div>
           <div class="yunfei_list">
             <table cellpadding="0" cellspacing="0" class="Case_list confirm_yunfei">
             <thead>
             <tr class="label_name "><td width="100px">运送方式</td><td width="500px">运送到</td><td width="100px">首件（个）</td><td width="100px">运费（元）</td><td width="100px">续件（个）</td><td width="100px">运费（元）</td></tr></thead>
             <tbody>
             <tr><td>顺丰快递</td><td>江苏，上海，浙江</td><td>1</td><td>0</td><td>1</td><td>0</td></tr>
            <tr><td>顺丰快递</td><td>四川，安徽，江西，广东，广西，山西，陕西，云南，湖南，湖北，河北，内蒙古，新疆</td><td>1</td><td>20</td><td>1</td><td>10</td></tr>
            </tbody>
             </table>           
           </div>
           <a  href="javascript:(0)"class="AddTemplate_btn" id="test">新增运费模板</a><!--局部刷新显新增运费模板示文本-->
         <script type="text/javascript">
         //弹出一个iframe层
$('#test').on('click', function(){
    layer.open({
        type: 2,
        title: '新增运费模板',
        maxmin: true,
        shadeClose: true, //点击遮罩关闭层
        area : ['900px' , '650px'],
        content: '发货管理-运费模板.html'
    });
});</script>
         </div>
         <div class="Case_style">
          <div class="case_title"><h2 class="left">参考范例：</h2><span>（以下模板仅供参考）</span></div>
          <h4>你可以按照宝贝的数量设置模板，一般适用于比较轻的宝贝。</h4>
          <table class="Case_list" cellpadding="0" cellspacing="0" width="100%">
           <thead>
           <tr class="title_name"><td colspan="6">小物件模板副本</td></tr>
           <tr class="label_name "><td width="100px">运送方式</td><td width="500px">运送到</td><td width="100px">首件（个）</td><td width="100px">运费（元）</td><td width="100px">续件（个）</td><td width="100px">运费（元）</td></tr>
           </thead>
           <tbody>
            <tr><td>顺丰快递</td><td>江苏，上海，浙江</td><td>1</td><td>0</td><td>1</td><td>0</td></tr>
            <tr><td>顺丰快递</td><td>四川，安徽，江西，广东，广西，山西，陕西，云南，湖南，湖北，河北，内蒙古，新疆</td><td>1</td><td>20</td><td>1</td><td>10</td></tr>
           </tbody>
          </table>
         </div>
        </div>
        <ul>         
          </form>       
        </ul>
       </div>
     </div>
     <script type="text/javascript">jQuery(".Delivery_style").slide({trigger:"click"});</script>
   </div>
  </div>
</div>
<!--网站地图-->
<jsp:include page="../kj/bottom.jsp/" />
</body>
</html>
