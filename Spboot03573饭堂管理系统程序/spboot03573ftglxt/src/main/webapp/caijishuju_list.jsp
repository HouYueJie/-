<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.*"%>
<%@page import="net.jntoo.db.*"%>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="head.jsp" %>

<div style="padding: 10px">




<div class="panel panel-default">
    <div class="panel-heading">
        <span class="module-name">
            采集数据        </span>
        <span>列表</span>
    </div>
    <div class="panel-body">
        <div class="pa10 bg-warning">
            <form class="form-inline" action="?"><!-- form 标签开始 -->
    <div class="form-group">
    
    <i class="glyphicon glyphicon-search"></i>
                </div><div class="form-group">
    学生信息
    
                            学号：<input type="text" class="form-control" style="" name="xuehao" value="${param.xuehao}"/>
姓名：<input type="text" class="form-control" style="" name="xingming" value="${param.xingming}"/></div><select class="form-control" name="order" id="orderby"><option value="id">按发布时间</option></select><select class="form-control" name="sort" id="sort"><option value="desc">倒序</option><option value="asc">升序</option></select><script>$("#orderby").val("${orderby}");$("#sort").val("${sort}");</script><button type="submit" class="btn btn-default">
    搜索</button><!--form标签结束--></form></div>



        

                    <div class="">
                <table width="100%" border="1" class="table table-list table-bordered table-hover"><thead><tr align="center"><th width="60" data-field="item">序号</th>
                        <th> 学号 </th>
<th> 姓名 </th>
<th> 体温 </th>
<th> 是否发烧 </th>
<th> 采集时间 </th>
<th> 采集地点 </th>
<th> 环境人数 </th>
<th> 室外温度 </th>
<th> 湿度 </th>
<th> 备注 </th>
                                                                        <th width="180" data-field="addtime">添加时间</th>
                        <th width="220" data-field="handler">操作</th>
                    </tr></thead><tbody>
                    <c:set var="i" value="0" /><c:forEach items="${list}" var="map"><c:set var="i" value="${i+1}" /><c:set var="map" value="${map}" scope="request" />
                    <tr id="${map.id}" pid=""><td width="30" align="center">
                            <label>
                                                                ${i}
                            </label>
                        </td>
                        <td> ${map.xuehao} </td>
<td> ${map.xingming} </td>
<td> ${map.tiwen} </td>
<td> ${map.shifoufashao} </td>
<td> ${map.caijishijian} </td>
<td> ${map.caijididian} </td>
<td> ${map.huanjingrenshu} </td>
<td> ${map.shiwaiwendu} </td>
<td> ${map.shidu} </td>
<td> ${map.beizhu} </td>
                                                                        <td align="center">${map.addtime}</td>
                        <td align="center">
                            
                                                                                        <a href="caijishuju_detail.do?id=${map.id}">
                                    详细
                                </a>
                                                        <a href="caijishuju_updt.do?id=${map.id}">修改</a>
                            <a href="caijishuju_delete.do?id=${map.id}" onclick="return confirm('真的要删除？')">删除</a>
                            <!--qiatnalijne-->
                        </td>
                    </tr>
                    </c:forEach>
                    </tbody></table></div>
            
        ${page.info}
        


    </div>



</div>








</div>
<%@ include file="foot.jsp" %>
