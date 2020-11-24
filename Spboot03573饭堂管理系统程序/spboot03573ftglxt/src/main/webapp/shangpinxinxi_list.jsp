<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<%@page import="util.*" %>
<%@page import="net.jntoo.db.*" %>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="head.jsp" %>

<div style="padding: 10px">


    <div class="panel panel-default">
        <div class="panel-heading">
        <span class="module-name">
            商品信息        </span>
            <span>列表</span>
        </div>
        <div class="panel-body">
            <div class="pa10 bg-warning">
                <form class="form-inline" action="?"><!-- form 标签开始 -->
                    <div class="form-group">

                        <i class="glyphicon glyphicon-search"></i>
                    </div>
                    <div class="form-group">
                        商品名称
                        <input type="text" class="form-control" style="" name="shangpinmingcheng"
                               value="${param.shangpinmingcheng}"/></div>
                    <div class="form-group">
                        商品标题
                        <input type="text" class="form-control" style="" name="shangpinbiaoti"
                               value="${param.shangpinbiaoti}"/></div>
                    <div class="form-group">
                        类目
                        <select class="form-control class_leimu8" data-value="${param.leimu}" data-rule-required="true"
                                data-msg-required="请填写类目" id="leimu" name="leimu">
                            <option value="">请选择</option>
                            <ssm:sql var="select" type="select">SELECT * FROM shangpinleimu ORDER BY id desc</ssm:sql>
                            <c:forEach items="${select}" var="m"><c:set var="m" value="${m}" scope="request"/>
                                <option value="${m.id}">${m.leimumingcheng}</option>
                            </c:forEach>
                        </select>
                        <script>
                            $(".class_leimu8").val($(".class_leimu8").attr("data-value"))</script>
                    </div>
                    <div class="form-group">
                        商品状态
                        <select class="form-control class_shangpinzhuangtai9" data-value="${param.shangpinzhuangtai}"
                                id="shangpinzhuangtai" name="shangpinzhuangtai">
                            <option value="">请选择</option>
                            <option value="上架">上架</option>
                            <option value="下架">下架</option>
                        </select>
                        <script>
                            $(".class_shangpinzhuangtai9").val($(".class_shangpinzhuangtai9").attr("data-value"))</script>
                    </div>
                    <select class="form-control" name="order" id="orderby">
                        <option value="id">按发布时间</option>
                        <option value="shangpinkucun">
                            按商品库存
                        </option>
                    </select><select class="form-control" name="sort" id="sort">
                        <option value="desc">倒序</option>
                        <option value="asc">升序</option>
                    </select>
                    <script>$("#orderby").val("${orderby}");
                    $("#sort").val("${sort}");</script>
                    <button type="submit" class="btn btn-default">
                        搜索
                    </button><!--form标签结束--></form>
            </div>


            <div class="">
                <table width="100%" border="1" class="table table-list table-bordered table-hover">
                    <thead>
                    <tr align="center">
                        <th width="60" data-field="item">序号</th>
                        <th> 商品编号</th>
                        <th> 商品名称</th>
                        <th> 商品标题</th>
                        <th> 类目</th>
                        <th> 商品主图</th>
                        <th> 商品相册</th>
                        <th> 市场价</th>
                        <th> 售价</th>
                        <th> 供货价</th>
                        <th> 产品型号</th>
                        <th> 产品规格</th>
                        <th> 保质期</th>
                        <th> 商品库存</th>
                        <th> 商品状态</th>

                        <th width="180" data-field="addtime">添加时间</th>
                        <th width="120" data-field="handler">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:set var="i" value="0"/><c:forEach items="${list}" var="map"><c:set var="i" value="${i+1}"/><c:set
                            var="map" value="${map}" scope="request"/>
                        <tr id="${map.id}" pid="">
                            <td width="30" align="center">
                                <label>
                                        ${i}
                                </label>
                            </td>
                            <td> ${map.shangpinbianhao} </td>
                            <td> ${map.shangpinmingcheng} </td>
                            <td> ${map.shangpinbiaoti} </td>
                            <td><ssm:sql var="mapshangpinleimu1"
                                         type="find">SELECT leimumingcheng FROM shangpinleimu where id='${map.leimu}'</ssm:sql>${mapshangpinleimu1.leimumingcheng} </td>
                            <td><c:choose>
                                <c:when test="${'' == map.shangpinzhutu }">
                                    -</c:when><c:otherwise><img width="100"
                                                                src="${map.shangpinzhutu}"/></c:otherwise></c:choose>
                            </td>
                            <td><c:choose>
                                <c:when test="${'' == map.shangpinxiangce }">
                                    -</c:when><c:otherwise><img width="100"
                                                                src="${Info.images(map.shangpinxiangce)}"/></c:otherwise></c:choose>
                            </td>
                            <td> ${map.shichangjia} </td>
                            <td> ${map.shoujia} </td>
                            <td> ${map.gonghuojia} </td>
                            <td> ${map.chanpinxinghao} </td>
                            <td> ${map.chanpinguige} </td>
                            <td> ${map.baozhiqi} </td>
                            <td> ${map.shangpinkucun} </td>
                            <td> ${map.shangpinzhuangtai} </td>

                            <td align="center">${map.addtime}</td>
                            <td align="center">

                                <a href="shangpinxinxi_detail.do?id=${map.id}">
                                    详细
                                </a>
                                <a href="shangpinxinxi_updt.do?id=${map.id}">修改</a>
                                <a href="shangpinxinxi_delete.do?id=${map.id}" onclick="return confirm('真的要删除？')">删除</a>
                                <!--qiatnalijne-->
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>

            ${page.info}


        </div>


    </div>


</div>
<%@ include file="foot.jsp" %>
