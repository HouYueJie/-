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
<link rel="stylesheet" href="js/umeditor/themes/default/css/umeditor.css"/>
<script src="js/umeditor/umeditor.config.js"></script>
<script src="js/umeditor/umeditor.min.js"></script>

<div style="padding: 10px">




<div class="container"><!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->
<div class="panel panel-default">
        <div class="panel-heading">
            添加菜品信息:
        </div>
        <div class="panel-body">
            <form action="caipinxinxiinsert.do" method="post" name="form1" id="form1"><!-- form 标签开始 -->
    <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">菜品编号</label>
        <div class="col-sm-8">
            <input type="text" class="form-control" style="width:150px;" readonly="readonly" id="caipinbianhao" name="caipinbianhao" value="${Info.getID()}"/></div>
    </div>
</div><div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">菜品名称</label>
        <div class="col-sm-8">
            <input type="text" class="form-control" style="width:250px;" id="caipinmingcheng" name="caipinmingcheng" value=""/></div>
    </div>
</div><div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">分类<span style="color: red;">*</span></label>
        <div class="col-sm-8">
            <select class="form-control class_fenlei16" data-value="" data-rule-required="true" data-msg-required="请填写分类" id="fenlei" name="fenlei" style="width:250px"><ssm:sql var="select" type="select">SELECT * FROM caipinfenlei ORDER BY id desc</ssm:sql>
<c:forEach items="${select}" var="m"><c:set var="m" value="${m}" scope="request" />
<option value="${m.id}">${m.fenleimingcheng}</option>
</c:forEach>
</select></div>
    </div>
</div><div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">菜品主图<span style="color: red;">*</span></label>
        <div class="col-sm-8">
            <div class="input-group" style="width:250px">
    <input type="text" class="form-control" data-rule-required="true" data-msg-required="请填写菜品主图" id="caipinzhutu" name="caipinzhutu" value=""/><span class="input-group-btn"><button type="button" class="btn btn-default" onclick="layer.open({type:2,title:'上传图片',fixed:true,shadeClose:true,shade:0.5,area:['320px','150px'],content:'upload.html?result=caipinzhutu'})">
    上传图片</button></span>
</div></div>
    </div>
</div><div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">细节详图</label>
        <div class="col-sm-8">
            <input type="hidden" id="xijiexiangtu" name="xijiexiangtu" value=""/><script>showUploadImages("#xijiexiangtu")</script></div>
    </div>
</div><div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">价格<span style="color: red;">*</span></label>
        <div class="col-sm-8">
            <input type="number" class="form-control" style="width:150px;" step="0.01" data-rule-required="true" data-msg-required="请填写价格" number="true" data-msg-number="输入一个有效数字" id="jiage" name="jiage" value=""/></div>
    </div>
</div><div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">折扣价<span style="color: red;">*</span></label>
        <div class="col-sm-8">
            <input type="number" class="form-control" style="width:150px;" step="0.01" data-rule-required="true" data-msg-required="请填写折扣价" number="true" data-msg-number="输入一个有效数字" id="zhekoujia" name="zhekoujia" value=""/></div>
    </div>
</div><div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">库存<span style="color: red;">*</span></label>
        <div class="col-sm-8">
            <input type="number" class="form-control" style="width:150px;" data-rule-required="true" data-msg-required="请填写库存" number="true" data-msg-number="输入一个有效数字" id="kucun" name="kucun" value=""/></div>
    </div>
</div><div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">售卖窗口<span style="color: red;">*</span></label>
        <div class="col-sm-8">
            <input type="text" class="form-control" style="width:150px;" data-rule-required="true" data-msg-required="请填写售卖窗口" id="shoumaichuangkou" name="shoumaichuangkou" value=""/></div>
    </div>
</div><div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">是否新品</label>
        <div class="col-sm-8">
            <div class="class_shifouxinpin17" data-value=""> <label id="shifouxinpin" name="shifouxinpin" value="是"><input type="radio" id="shifouxinpin" name="shifouxinpin" value="是"/> 是 </label><label id="shifouxinpin" name="shifouxinpin" value="否"><input type="radio" id="shifouxinpin" name="shifouxinpin" value="否"/> 否 </label></div>                                            </div>
    </div>
</div><div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">菜品材料</label>
        <div class="col-sm-8">
            <textarea style="width: 80%;height: 120px" class="form-control" id="caipincailiao" name="caipincailiao"></textarea></div>
    </div>
</div><div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">菜品简介</label>
        <div class="col-sm-8">
            <textarea id="caipinjianjie" name="caipinjianjie" style="max-width: 750px;width:100%; height: 300px;"></textarea><script>
            (function(){
                var um = UM.getEditor('caipinjianjie');
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
