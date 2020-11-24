<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.*"%>
<%@page import="net.jntoo.db.*"%>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="head.jsp" %>
<script src="js/jquery.validate.js"></script>
<link rel="stylesheet" href="js/layer/theme/default/layer.css"/>
<script src="js/layer/layer.js"></script>
<link href="js/h5upload/h5upload.css" rel="stylesheet">
<script src="js/h5upload/h5upload.js"></script>
<link href="js/tags/tags.css" rel="stylesheet">
<script src="js/tags/tags.js"></script>
<script src="js/datepicker/WdatePicker.js"></script>
<link rel="stylesheet" href="js/umeditor/themes/default/css/umeditor.css"/>
<script src="js/umeditor/umeditor.config.js"></script>
<script src="js/umeditor/umeditor.min.js"></script>

<div style="padding: 10px">




<div class="container"><!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->
<div class="panel panel-default">
        <div class="panel-heading">
            添加商品信息:
        </div>
        <div class="panel-body">
            <form action="shangpinxinxiinsert.do" method="post" name="form1" id="form1"><!-- form 标签开始 -->
    <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">商品编号</label>
        <div class="col-sm-8">
            <input type="text" class="form-control" style="width:150px;" readonly="readonly" id="shangpinbianhao" name="shangpinbianhao" value="${Info.getID()}"/></div>
    </div>
</div><div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">商品名称<span style="color: red;">*</span></label>
        <div class="col-sm-8">
            <input type="text" class="form-control" style="width:250px;" data-rule-required="true" data-msg-required="请填写商品名称" id="shangpinmingcheng" name="shangpinmingcheng" value=""/></div>
    </div>
</div><div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">商品标题<span style="color: red;">*</span></label>
        <div class="col-sm-8">
            <input type="text" class="form-control" style="width:250px;" data-rule-required="true" data-msg-required="请填写商品标题" id="shangpinbiaoti" name="shangpinbiaoti" value=""/></div>
    </div>
</div><div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">类目<span style="color: red;">*</span></label>
        <div class="col-sm-8">
            <select class="form-control class_leimu10" data-value="" data-rule-required="true" data-msg-required="请填写类目" id="leimu" name="leimu" style="width:250px"><ssm:sql var="select" type="select">SELECT * FROM shangpinleimu ORDER BY id desc</ssm:sql>
<c:forEach items="${select}" var="m"><c:set var="m" value="${m}" scope="request" />
<option value="${m.id}">${m.leimumingcheng}</option>
</c:forEach>
</select></div>
    </div>
</div><div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">商品主图<span style="color: red;">*</span></label>
        <div class="col-sm-8">
            <div class="input-group" style="width:250px">
    <input type="text" class="form-control" data-rule-required="true" data-msg-required="请填写商品主图" id="shangpinzhutu" name="shangpinzhutu" value=""/><span class="input-group-btn"><button type="button" class="btn btn-default" onclick="layer.open({type:2,title:'上传图片',fixed:true,shadeClose:true,shade:0.5,area:['320px','150px'],content:'upload.html?result=shangpinzhutu'})">
    上传图片</button></span>
</div></div>
    </div>
</div><div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">商品相册</label>
        <div class="col-sm-8">
            <input type="hidden" id="shangpinxiangce" name="shangpinxiangce" value=""/><script>showUploadImages("#shangpinxiangce")</script></div>
    </div>
</div><div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">市场价<span style="color: red;">*</span></label>
        <div class="col-sm-8">
            <input type="number" class="form-control" style="width:150px;" step="0.01" data-rule-required="true" data-msg-required="请填写市场价" number="true" data-msg-number="输入一个有效数字" id="shichangjia" name="shichangjia" value=""/></div>
    </div>
</div><div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">售价<span style="color: red;">*</span></label>
        <div class="col-sm-8">
            <input type="number" class="form-control" style="width:150px;" step="0.01" data-rule-required="true" data-msg-required="请填写售价" number="true" data-msg-number="输入一个有效数字" id="shoujia" name="shoujia" value=""/></div>
    </div>
</div><div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">供货价<span style="color: red;">*</span></label>
        <div class="col-sm-8">
            <input type="number" class="form-control" style="width:150px;" step="0.01" data-rule-required="true" data-msg-required="请填写供货价" number="true" data-msg-number="输入一个有效数字" id="gonghuojia" name="gonghuojia" value=""/></div>
    </div>
</div><div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">产品型号<span style="color: red;">*</span></label>
        <div class="col-sm-8">
            <input type="text" class="form-control" style="width:150px;" data-rule-required="true" data-msg-required="请填写产品型号" id="chanpinxinghao" name="chanpinxinghao" value=""/></div>
    </div>
</div><div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">产品规格<span style="color: red;">*</span></label>
        <div class="col-sm-8">
            <input data-rule-required="true" data-msg-required="请填写产品规格" id="chanpinguige" name="chanpinguige" value="" type="text"/><script>$(function() {
          $("#chanpinguige").tagInput();
        })</script></div>
    </div>
</div><div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">保质期<span style="color: red;">*</span></label>
        <div class="col-sm-8">
            <input type="text" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',lang:'zh-cn'})" style="width:120px;" data-rule-required="true" data-msg-required="请填写保质期" id="baozhiqi" name="baozhiqi" readonly="readonly" value=""/></div>
    </div>
</div><div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">商品库存<span style="color: red;">*</span></label>
        <div class="col-sm-8">
            <input type="number" class="form-control" style="width:150px;" data-rule-required="true" data-msg-required="请填写商品库存" number="true" data-msg-number="输入一个有效数字" id="shangpinkucun" name="shangpinkucun" value=""/></div>
    </div>
</div><div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">商品状态</label>
        <div class="col-sm-8">
            <select class="form-control class_shangpinzhuangtai11" data-value="" id="shangpinzhuangtai" name="shangpinzhuangtai" style="width:250px"><option value="上架">上架</option><option value="下架">下架</option></select></div>
    </div>
</div><div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">商品参数</label>
        <div class="col-sm-8">
            <textarea style="width: 80%;height: 120px" class="form-control" id="shangpincanshu" name="shangpincanshu"></textarea></div>
    </div>
</div><div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">商品详情</label>
        <div class="col-sm-8">
            <textarea id="shangpinxiangqing" name="shangpinxiangqing" style="max-width: 750px;width:100%; height: 300px;"></textarea><script>
            (function(){
                var um = UM.getEditor('shangpinxiangqing');
            })();
            </script></div>
    </div>
</div><div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2"> </label>
        <div class="col-sm-8">
            <button type="submit" class="btn btn-primary" name="Submit">
    提交</button><button type="reset" class="btn btn-default" name="Submit2">
    重置</button></div>
    </div>
</div><!--form标签结束--></form></div>
    </div>
<!-- container定宽，并剧中结束 --></div>
<script>
    $(function () {
        $('#form1').validate();
    });
</script></div>
<%@ include file="foot.jsp" %>
