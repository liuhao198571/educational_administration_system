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
                                <form class="form-horizontal" role="form" action="/admin/editCourse" id="editfrom"
                                      method="post">
                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-sm-2 control-label">课程号</label>
                                        <div class="col-sm-10">
                                            <input readonly="readonly" type="number" class="form-control"
                                                   id="inputEmail3" value="${course.courseid}" name="courseid"
                                                   placeholder="请输入课程号">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputPassword3" class="col-sm-2 control-label">课程名称</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" id="inputPassword3"
                                                   name="coursename" value="${course.coursename}" placeholder="请输入课程名称">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputPassword3" class="col-sm-2 control-label"
                                               name="grade">授课老师编号</label>
                                        <div class="col-sm-10">
                                            <select class="form-control" name="teacherid" id="teacherid">
                                                <c:forEach items="${teacherList}" var="item">
                                                    <option value="${item.userid}">${item.username}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputPassword3" class="col-sm-2 control-label">上课时间</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" name="coursetime"
                                                   value="${course.coursetime}" placeholder="请输入上课时间">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputPassword3" class="col-sm-2 control-label">上课地点</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" name="classroom"
                                                   value="${course.classroom}" placeholder="上课地点">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-sm-2 control-label">周数</label>
                                        <div class="col-sm-10">
                                            <input type="number" class="form-control" name="courseweek"
                                                   value="${course.courseweek}" placeholder="请输入周数">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputPassword3" class="col-sm-2 control-label" name="coursetype">课程的类型：</label>
                                        <div class="col-sm-10">
                                            <select class="form-control" name="coursetype" id="coursetype">
                                                <option value="必修课">必修课</option>
                                                <option value="选修课">选修课</option>
                                                <option value="公共课">公共课</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputPassword3" class="col-sm-2 control-label"
                                               name="grade">所属院系</label>
                                        <div class="col-sm-10">
                                            <select class="form-control" name="collegeid">
                                                <c:forEach items="${collegeList}" var="item">
                                                    <option value="${item.collegeid}">${item.collegename}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-sm-2 control-label">学分：</label>
                                        <div class="col-sm-10">
                                            <input type="number" class="form-control" name="score"
                                                   value="${course.score}" placeholder="请输入学分">
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

                    <%--<div class="col-md-12 text-center" style="margin:20px;">--%>
                    <%--<input class="submit btn btn-danger" type="submit" value="提交">--%>
                    <%--</div>--%>
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
    $("#nav li:nth-child(1)").addClass("active")

    var collegeSelect = $("#college option");
    for (var i = 0; i < collegeSelect.length; i++) {
        if (collegeSelect[i].value == '${course.collegeid}') {
            collegeSelect[i].selected = true;
        }
    }

    var degreeSelect = $("#coursetype option");
    for (var i = 0; i < coursetypeSelect.length; i++) {
        if (coursetypeSelect[i].value == '${course.coursetype}') {
            coursetypeSelect[i].selected = true;
        }
    }

    var teacheridSelect = $("#teacherid option");
    for (var i = 0; i < teacheridSelect.length; i++) {
        if (teacheridSelect[i].value == '${course.teacherid}') {
            teacheridSelect[i].selected = true;
        }
    }

</script>
</html>
