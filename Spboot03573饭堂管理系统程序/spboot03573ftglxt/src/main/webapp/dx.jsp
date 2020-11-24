<%@ page language="java" import="dao.CommDAO" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<%@page import="util.Info" %>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<html>
<head>

    <title>dx</title>
    <script src="js/jquery.js"></script>
    <link rel="stylesheet" href="js/umeditor/themes/default/css/umeditor.css"/>
    <script src="js/umeditor/umeditor.config.js"></script>
    <script src="js/umeditor/umeditor.min.js"></script>

    <LINK href="css.css" type=text/css rel=stylesheet>
</head>

<body>
编辑:${map.leibie}
<br><br>
<script>
    function check() {
        return true;
    }
</script>

<form action="./savedx.do?id=${map.id}" method="post" name="f1">
    <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF"
           style="border-collapse:collapse">
        <tr>
            <td>内容：</td>
            <td><textarea name="content" id="content" cols="100" rows="8"
                          style="width:700px;height:400px;">${ssm:Info_html(map.content)}</textarea>

                <input name="leibie" type="hidden" id="leibie" value="${map.leibie}"></td>
            <script>
                (function(){
                    var um = UM.getEditor('content');
                })();
            </script>
        </tr>

        <tr>
            <td>&nbsp;</td>
            <td><input type="submit" name="Submit" value="确定编辑" onClick="return check();"/>
                <input type="reset" name="Submit2" value="重置"/></td>
        </tr>
    </table>
</form>

</body>
</html>


