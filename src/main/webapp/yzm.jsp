<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/3/28
  Time: 9:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>test yzm</title>
</head>
<body>
验证码：<input type="text" name="yzm" onkeyup="yzmInputFunction(this)"/><img src="image.jsp" onclick="resetYzm(this)"/>

<script>

    function createAjax() {
        var ajax = new XMLHttpRequest();
        return ajax;
    }

    function yzmInputFunction(object) {
        if (object.value.length == 4) {
            alert(object.value);
        }
    }


    function resetYzm(object) {
        object.src = "image.jsp?time=" + new Date().toString();
        document.getElementsByName("yzm")[0].value = "";
    }
</script>
</body>
</html>
