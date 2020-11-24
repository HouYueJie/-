<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<%@page import="util.*" %>
<%@page import="net.jntoo.db.*" %>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
﻿<!doctype html>

<script src="js/jquery.validate.js"></script>
<script src="js/datepicker/WdatePicker.js"></script>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>饭堂管理系统-后台登录</title>

    <!-- begin::global styles -->
    <link rel="stylesheet" href="assets/vendors/bundle.css" type="text/css">
    <!-- end::global styles -->

    <!-- begin::custom styles -->
    <link rel="stylesheet" href="assets/css/app.css" type="text/css">
    <!-- end::custom styles -->

</head>
<body class="bg-white h-100-vh p-t-0">

<!-- begin::page loader-->
<div class="page-loader">
    <div class="spinner-border"></div>
    <span>Loading ...</span>
</div>
<!-- end::page loader -->

<div class="p-b-50 d-block d-lg-none"></div>

<div class="container h-100-vh">
    <div class="row align-items-md-center h-100-vh">
        <div class="col-lg-6 d-none d-lg-block">
            <img class="img-fluid" src="assets/img/login.png" alt="...">
        </div>

        <div style="padding: 10px">








            <div style="width: 500px"><!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->
                <div class="panel panel-default">
                    <div class="panel-heading">
                        学生注册:
                    </div>
                    <div class="panel-body">
                        <form action="xueshenginsert.do" method="post" name="form1" id="form1"><!-- form 标签开始 -->
                            <div class="form-group">
                                <div class="row">
                                    <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">学号<span
                                            style="color: red;">*</span></label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" style="width:150px;" data-rule-required="true"
                                               data-msg-required="请填写学号"
                                               remote="checkno.do?checktype=insert&table=xuesheng&col=xuehao"
                                               data-msg-remote="内容重复了" id="xuehao" name="xuehao" value=""/></div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">密码<span
                                            style="color: red;">*</span></label>
                                    <div class="col-sm-8">
                                        <input type="password" class="form-control" style="width:150px;"
                                               data-rule-required="true" data-msg-required="请填写密码" id="mima" name="mima"
                                               value=""/></div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">姓名<span
                                            style="color: red;">*</span></label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" style="width:150px;" data-rule-required="true"
                                               data-msg-required="请填写姓名" id="xingming" name="xingming" value=""/></div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">性别</label>
                                    <div class="col-sm-8">
                                        <select class="form-control class_xingbie2" data-value="" id="xingbie" name="xingbie"
                                                style="width:250px">
                                            <option value="男">男</option>
                                            <option value="女">女</option>
                                        </select></div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">出生年月</label>
                                    <div class="col-sm-8">
                                        <input type="text" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',lang:'zh-cn'})"
                                               style="width:120px;" id="chushengnianyue" name="chushengnianyue"
                                               readonly="readonly" value=""/></div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">校区<span
                                            style="color: red;">*</span></label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" style="width:150px;" data-rule-required="true"
                                               data-msg-required="请填写校区" id="xiaoqu" name="xiaoqu" value=""/></div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">手机</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" style="width:150px;" phone="true"
                                               data-msg-phone="请输入正确手机号码" id="shouji" name="shouji" value=""/></div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">邮箱</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" style="width:150px;" email="true"
                                               data-msg-email="请输入有效邮件地址" id="youxiang" name="youxiang" value=""/></div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">身份证</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" style="width:150px;" idcard="true"
                                               data-msg-email="请输入有效身份证号码" id="shenfenzheng" name="shenfenzheng" value=""/>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2"> </label>
                                    <div class="col-sm-8">
                                        <button type="submit" class="btn btn-primary" name="Submit">
                                            提交
                                        </button>
                                        <button type="reset" class="btn btn-primary" name="Submit2">
                                            重置
                                        </button>
                                        <a href="login.do" class="btn btn-primary">返回登录</a>
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
    </div>
</div>

<!-- begin::global scripts -->
<script src="assets/vendors/bundle.js"></script>
<!-- end::global scripts -->

<!-- begin::custom scripts -->
<script src="assets/js/app.js"></script>
<!-- end::custom scripts -->


</body>
</html>
