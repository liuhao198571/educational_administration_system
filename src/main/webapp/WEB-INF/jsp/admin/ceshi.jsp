<%--
  Created by IntelliJ IDEA.
  User: flyme
  Date: 2018/7/7
  Time: 16:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<script type="text/javascript" src="../../../js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
    $(function () {
        //alert(1);
        //这是json格式，但不是json串，这是key:value，相当于一个map。{}外面得加上一个单引号才是串，但只是个json格式的字符串，不是json数据
        var params = '{"id": 1,"name": "测试商品","price": 99.9,"detail": "测试商品描述","pic": "123456.jpg"}';

        /*$.post(url,params,function(data){//这是回调json字符串，不能发送json字符串

        },"json");*/

        $.ajax({
            url: "/admin/showceshi",
            data: params,
            contentType: "application/json;charset=UTF-8", //发送数据的格式
            type: "get",
            dataType: "json", //这是返回来是json，也就是回调json
            success: function (data) {
                alert(data.name);
            }
        });
    });
</script>
</body>
</html>
