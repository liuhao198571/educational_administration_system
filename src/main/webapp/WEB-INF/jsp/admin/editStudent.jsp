<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <jsp:include page="head.jsp"></jsp:include>
</head>
<body>
<!-- start: Header -->
<jsp:include page="top.jsp"></jsp:include>
<!-- end: Header -->
<div class="container-fluid mimin-wrapper">
    <!-- start:Left Menu -->
    <jsp:include page="menu.jsp"></jsp:include>
    <!-- end: Left Menu -->

    <!-- start: content -->
    <div id="content">
        <div class="panel">
            <div class="panel-body">
                <div class="col-md-12">
                    <h3 class="animated fadeInLeft">修改课程信息</h3>
                    <p class="animated fadeInDown"> 业务 <span class="fa-angle-right fa"></span> 修改课程信息 </p>
                </div>
            </div>
        </div>
        <div class="form-element">
            <div class="col-md-12 padding-0">
                <div class="col-md-12">
                    <div class="panel form-element-padding">
                        <div class="panel-heading">
                            <h4>修改课程信息</h4>
                        </div>
                        <div class="panel-body" style="padding-bottom:30px;">
                            <div class="col-md-12">
                                <form class="form-horizontal" role="form" action="/admin/editStudent" id="editfrom"
                                      method="post">
                                    <div class="form-group ">
                                        <label for="inputEmail3" class="col-sm-2 control-label">学号</label>
                                        <div class="col-sm-10">
                                            <input readonly="readonly" type="number" class="form-control"
                                                   id="inputEmail3" name="userid" placeholder="请输入学号"
                                            <c:if test='${student!=null}'>
                                                   value="${student.userid}"
                                            </c:if>>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputPassword3" class="col-sm-2 control-label">姓名</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" id="inputPassword3" name="username"
                                                   placeholder="请输入姓名" value="${student.username}">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputPassword3" class="col-sm-2 control-label">性别</label>
                                        <div class="col-sm-10">
                                            <label class="checkbox-inline">
                                                <input type="radio" name="sex" value="男" checked>男
                                            </label>
                                            <label class="checkbox-inline">
                                                <input type="radio" name="sex" value="女">女
                                            </label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputPassword3" class="col-sm-2 control-label">出生年份</label>
                                        <div class="col-sm-10">
                                            <input type="date"
                                                   value="<fmt:formatDate value="${student.birthyear}" dateStyle="medium" pattern="yyyy-MM-dd" />"
                                                   name="birthyear"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputPassword3" class="col-sm-2 control-label"
                                               name="grade">入学时间</label>
                                        <div class="col-sm-10">
                                            <input type="date"
                                                   value="<fmt:formatDate value="${student.grade}" dateStyle="medium" pattern="yyyy-MM-dd" />"
                                                   name="grade"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputPassword3" class="col-sm-2 control-label"
                                               name="grade">所属院系</label>
                                        <div class="col-sm-10">
                                            <select class="form-control" name="collegeid" id="college">
                                                <c:forEach items="${collegeList}" var="item">
                                                    <option value="${item.collegeid}">${item.collegename}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group" style="text-align: center">
                                        <button class="btn btn-danger btn-sm" type="submit">提交</button>
                                        <button class="btn btn-primary btn-sm" type="reset">重置</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end: content -->

</div>

<!-- start: Javascript -->
<script src="../../../js/jquery.min.js"></script>
<script src="../../../js/jquery.ui.min.js"></script>
<script src="../../../js/bootstrap.min.js"></script>
<!-- plugins -->
<script src="../../../js/plugins/jquery.nicescroll.js"></script>
<!-- custom -->
<script src="../../../js/main.js"></script>
<!-- end: Javascript -->
<script>
    $("#left-menu-2").click();
</script>
</body>
<script type="text/javascript">
    $("#nav li:nth-child(2)").addClass("active")

    var collegeSelect = $("#college option");
    for (var i = 0; i < collegeSelect.length; i++) {
        if (collegeSelect[i].value == '${student.collegeid}') {
            collegeSelect[i].selected = true;
        }
    }
</script>
</html>
