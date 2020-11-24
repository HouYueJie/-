<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.*"%>
<%@page import="net.jntoo.db.*"%>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="head.jsp" %>
<link href="js/h5upload/h5upload.css" rel="stylesheet">
<script src="js/h5upload/h5upload.js"></script>

<div style="padding: 10px">



<style>
    .admin-detail {
        display: flex;
        flex-wrap: wrap;
    }
    .admin-detail .detail {
        width: 50%;
        padding: 5px;
        display: flex;
        margin-bottom: 10px;
        border-bottom: 1px solid #DEDEDE;
    }
    .admin-detail .detail .detail-title {
        width: 120px;
        text-align: right;
    }
    .admin-detail .detail .detail-content {
        flex-grow: 1;
    }
    .admin-detail .detail.detail-editor {
        width: 100%;
        flex-wrap: wrap;
    }
    .admin-detail .detail.detail-editor .detail-title {
        width: 100%;
        padding: 10px;
        margin-top: 10px;
        background: #9a0606;
        color: #ffffff;
        text-align: left;
    }
    .admin-detail .detail.detail-editor .detail-content{
        padding: 10px;
    }

</style>
<div class="panel panel-default">
    <div class="panel-heading">
        商品信息详情
    </div>
    <div class="panel-body">

        <div class="admin-detail clearfix">
                            <div class="detail detail-text">
                    <div class="detail-title">
                        商品编号：
                    </div>
                    <div class="detail-content">
                        ${map.shangpinbianhao}                    </div>
                </div>
                            <div class="detail detail-longtext">
                    <div class="detail-title">
                        商品名称：
                    </div>
                    <div class="detail-content">
                        ${map.shangpinmingcheng}                    </div>
                </div>
                            <div class="detail detail-longtext">
                    <div class="detail-title">
                        商品标题：
                    </div>
                    <div class="detail-content">
                        ${map.shangpinbiaoti}                    </div>
                </div>
                            <div class="detail detail-select">
                    <div class="detail-title">
                        类目：
                    </div>
                    <div class="detail-content">
                        <ssm:sql var="mapshangpinleimu2" type="find">SELECT leimumingcheng FROM shangpinleimu where id='${map.leimu}'</ssm:sql>${mapshangpinleimu2.leimumingcheng}                    </div>
                </div>
                            <div class="detail detail-image">
                    <div class="detail-title">
                        商品主图：
                    </div>
                    <div class="detail-content">
                        <img src="${map.shangpinzhutu}" style="width: 350px"/></div>
                </div>
                            <div class="detail detail-images">
                    <div class="detail-title">
                        商品相册：
                    </div>
                    <div class="detail-content">
                        <fieldset class="images_box"><div id="gellay_images" class="imagesList"><script>
            var images = "${map.shangpinxiangce}".split(',');
            for(var i=0;i<images.length;i++){
                var image = images[i];
                var uploadImage = '<div class="uploadImage">' +
                '<span class="thumb thumbnail"><img src="'+image+'"/></span>'+
                '</div>';
                document.writeln(uploadImage);
            }
            
</script></div></fieldset></div>
                </div>
                            <div class="detail detail-money">
                    <div class="detail-title">
                        市场价：
                    </div>
                    <div class="detail-content">
                        ${map.shichangjia}                    </div>
                </div>
                            <div class="detail detail-money">
                    <div class="detail-title">
                        售价：
                    </div>
                    <div class="detail-content">
                        ${map.shoujia}                    </div>
                </div>
                            <div class="detail detail-money">
                    <div class="detail-title">
                        供货价：
                    </div>
                    <div class="detail-content">
                        ${map.gonghuojia}                    </div>
                </div>
                            <div class="detail detail-text">
                    <div class="detail-title">
                        产品型号：
                    </div>
                    <div class="detail-content">
                        ${map.chanpinxinghao}                    </div>
                </div>
                            <div class="detail detail-spec">
                    <div class="detail-title">
                        产品规格：
                    </div>
                    <div class="detail-content">
                        ${map.chanpinguige}                    </div>
                </div>
                            <div class="detail detail-date">
                    <div class="detail-title">
                        保质期：
                    </div>
                    <div class="detail-content">
                        ${map.baozhiqi}                    </div>
                </div>
                            <div class="detail detail-number">
                    <div class="detail-title">
                        商品库存：
                    </div>
                    <div class="detail-content">
                        ${map.shangpinkucun}                    </div>
                </div>
                            <div class="detail detail-select">
                    <div class="detail-title">
                        商品状态：
                    </div>
                    <div class="detail-content">
                        ${map.shangpinzhuangtai}                    </div>
                </div>
                            <div class="detail detail-textarea">
                    <div class="detail-title">
                        商品参数：
                    </div>
                    <div class="detail-content">
                        ${map.shangpincanshu}                    </div>
                </div>
                            <div class="detail detail-editor">
                    <div class="detail-title">
                        商品详情：
                    </div>
                    <div class="detail-content">
                        ${map.shangpinxiangqing}                    </div>
                </div>
                    </div>

        <div class="button-list mt10">
            <div class="">
                <button type="button" class="btn btn-default" onclick="history.go(-1);">
    返回
                </button><button type="button" class="btn btn-default" onclick="window.print()">
    打印本页
                </button></div>
        </div>

    </div>
</div>







</div>
<%@ include file="foot.jsp" %>
