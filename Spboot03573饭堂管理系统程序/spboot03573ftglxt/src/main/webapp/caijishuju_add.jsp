<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<%@page import="util.*" %>
<%@page import="net.jntoo.db.*" %>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="head.jsp" %>
<script src="js/jquery.validate.js"></script>
<script>
    window.searchSelectUrl = "selectUpdateSearch.do";
    window.selectUpdateUrl = "tableAjax.do?a=table";
</script>
<script src="js/selectUpdate.js"></script>
<script src="js/datepicker/WdatePicker.js"></script>

<div style="padding: 10px">


    <div class="container"><!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->
        <div class="panel panel-default">
            <div class="panel-heading">
                添加采集数据:
            </div>
            <div class="panel-body">
                <form action="caijishujuinsert.do" method="post" name="form1" id="form1"><!-- form 标签开始 -->
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">学生信息</label>
                            <div class="col-sm-8">
                                <select id="xueshengxinxi" name="xueshengxinxi"
                                        onchange="getAjaxData('xuesheng' , this.value,'xuehao,xingming')">
                                    <option value="">请选择学生信息</option>
                                    <ssm:sql var="xueshengList"
                                             type="select">SELECT * FROM xuesheng ORDER BY id desc</ssm:sql><c:forEach
                                        items="${xueshengList}" var="tempMap"><c:set var="tempMap" value="${tempMap}"
                                                                                     scope="request"/>
                                    <option value="${tempMap.id}">${tempMap.xuehao} - ${tempMap.xingming}</option>
                                </c:forEach></select>
                                关键词：<input type="text" id="xueshengxinxi_keyword" value=""/>
                                <button type="button" onclick="xueshengxinxi_select_update()">搜索</button>
                                <script>
                                    function xueshengxinxi_select_update() {
                                        var keyword = $('#xueshengxinxi_keyword').val();
                                        var where = {};
                                        searchSelect('xueshengxinxi', 'xuesheng', keyword, where, 'xuehao,xingming'.split(','), "".split(","));
                                    }
                                </script>
                                <table>
                                    <tr>
                                        <td width="120">学号</td>
                                        <td><input type="text" class="form-control" style="width:150px;"
                                                   readonly="readonly" data-rule-required="true"
                                                   data-msg-required="请填写学号"
                                                   id="xuehao" name="xuehao" value=""/></td>
                                    </tr>
                                    <tr>
                                        <td width="120">姓名</td>
                                        <td><input type="text" class="form-control" style="width:150px;"
                                                   readonly="readonly" data-rule-required="true"
                                                   data-msg-required="请填写姓名" id="xingming" name="xingming" value=""/>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">体温<span
                                    style="color: red;">*</span></label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" style="width:150px;" data-rule-required="true"
                                       data-msg-required="请填写体温" id="tiwen" name="tiwen" value=""/></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">是否发烧</label>
                            <div class="col-sm-8">
                                <select class="form-control class_shifoufashao1" data-value="" id="shifoufashao"
                                        name="shifoufashao" style="width:250px">
                                    <option value="否">否</option>
                                    <option value="是">是</option>
                                </select></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">采集时间</label>
                            <div class="col-sm-8">
                                <input type="text" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',lang:'zh-cn'})"
                                       style="width:120px;" readonly="readonly" id="caijishijian" name="caijishijian"
                                       value="${Info.date("yyyy-MM-dd HH:mm:ss")}"/></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">采集地点<span
                                    style="color: red;">*</span></label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" style="width:250px;" data-rule-required="true"
                                       data-msg-required="请填写采集地点" id="caijididian" name="caijididian" value=""/></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">环境人数<span
                                    style="color: red;">*</span></label>
                            <div class="col-sm-8">
                                <input type="number" class="form-control" style="width:150px;" data-rule-required="true"
                                       data-msg-required="请填写环境人数" number="true" data-msg-number="输入一个有效数字"
                                       id="huanjingrenshu" name="huanjingrenshu" value=""/></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">室外温度<span
                                    style="color: red;">*</span></label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" style="width:150px;" data-rule-required="true"
                                       data-msg-required="请填写室外温度" id="shiwaiwendu" name="shiwaiwendu" value=""/></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">湿度<span
                                    style="color: red;">*</span></label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" style="width:150px;" data-rule-required="true"
                                       data-msg-required="请填写湿度" id="shidu" name="shidu" value=""/></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">备注</label>
                            <div class="col-sm-8">
                                <textarea style="width: 80%;height: 120px" class="form-control" id="beizhu"
                                          name="beizhu"></textarea></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2"> </label>
                            <div class="col-sm-8">
                                <button type="submit" class="btn btn-primary" name="Submit">
                                    提交
                                </button>
                                <button type="reset" class="btn btn-default" name="Submit2">
                                    重置
                                </button>
                            </div>
                        </div>
                    </div><!--form标签结束--></form>
            </div>
        </div>
        <!-- container定宽，并剧中结束 --></div>
    <script>
        $(function () {
            $('#form1').validate();
        });
    </script>
</div>
<%@ include file="foot.jsp" %>
