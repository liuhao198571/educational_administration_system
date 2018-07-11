<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="head.jsp"></jsp:include>
</head>
<body id="mimin" class="dashboard">
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
                    <h3 class="animated fadeInLeft">教师管理</h3>
                    <p class="animated fadeInDown"> 业务 <span class="fa-angle-right fa"></span> 教师页面 </p>
                </div>
            </div>
        </div>
        <div class="col-md-12 padding-0 form-element">
            <div class="col-md-12">
                <div class="panel form-element-padding">
                    <div class="panel-heading">
                        <h4>查询条件</h4>
                    </div>
                    <div class="panel-body" style="padding-bottom:30px;">
                        <div class="form-group">
                            <form action="/admin/selectTeacher" id="form1" method="post">
                                <label class="col-sm-1 control-label text-right">教师名称：</label>
                                <div class="col-sm-2">
                                    <input type="text" class="form-control" name="findByName">
                                </div>
                                <div class="col-sm-2">
                                    <input class="submit btn btn-danger" type="submit" value="提交">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="panel">
                    <div class="panel-heading">
                        <div class="col-sm-2">
                            <h3>教师列表</h3>
                        </div>
                        <div class="col-sm-8">
                            <button class="btn btn-danger" style="margin-top: 15px"
                                    onClick="location.href='/admin/addTeacher'">
                                添加教师信息
                            </button>
                        </div>
                    </div>
                    <div class="panel-body">
                        <div class="responsive-table">
                            <div id="datatables-example_wrapper"
                                 class="dataTables_wrapper form-inline dt-bootstrap no-footer">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <table class="table table-striped table-bordered dataTable no-footer"
                                               width="100%" cellspacing="0" style="width: 100%;">
                                            <thead>
                                            <tr role="row">
                                                <th class="sorting_asc" style="width: 60px;">教师编号</th>
                                                <th class="sorting_asc" style="width: 60px;">姓名</th>
                                                <th class="sorting_asc" style="width: 60px;">性别</th>
                                                <th class="sorting_asc" style="width: 60px;">出生年份</th>
                                                <th class="sorting_asc" style="width: 60px;">学历</th>
                                                <th class="sorting_asc" style="width: 60px;">职称</th>
                                                <th class="sorting_asc" style="width: 60px;">入职年份</th>
                                                <th class="sorting_asc" style="width: 60px;">学院</th>
                                                <th class="sorting_asc" style="width: 60px;">操作</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${teacherList}" var="item">
                                                <tr>
                                                    <td>${item.userid}</td>
                                                    <td>${item.username}</td>
                                                    <td>${item.sex}</td>
                                                    <td><fmt:formatDate value="${item.birthyear}"
                                                                        dateStyle="medium"/></td>
                                                    <td>${item.degree}</td>
                                                    <td>${item.title}</td>
                                                    <td><fmt:formatDate value="${item.grade}" dateStyle="medium"/></td>
                                                    <td>${item.collegeName}</td>
                                                    <td>
                                                        <button class="btn btn-primary btn-sm"
                                                                onClick="location.href='/admin/editTeacher?id=${item.userid}'">
                                                            修改
                                                        </button>
                                                        <button class="btn btn-danger btn-sm"
                                                                onClick="location.href='/admin/removeTeacher?id=${item.userid}'">
                                                            删除
                                                        </button>
                                                        <!--弹出框-->
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                        <div class="panel-footer">
                                            <c:if test="${pagingVO != null}">
                                                <nav style="text-align: center">
                                                    <ul class="pagination">
                                                        <li><a href="/admin/showTeacher?page=${pagingVO.upPageNo}">&laquo;上一页</a>
                                                        </li>
                                                        <li class="active"><a href="">${pagingVO.curentPageNo}</a></li>
                                                        <c:if test="${pagingVO.curentPageNo+1 <= pagingVO.totalCount}">
                                                            <li>
                                                                <a href="/admin/showTeacher?page=${pagingVO.curentPageNo+1}">${pagingVO.curentPageNo+1}</a>
                                                            </li>
                                                        </c:if>
                                                        <c:if test="${pagingVO.curentPageNo+2 <= pagingVO.totalCount}">
                                                            <li>
                                                                <a href="/admin/showTeacher?page=${pagingVO.curentPageNo+2}">${pagingVO.curentPageNo+2}</a>
                                                            </li>
                                                        </c:if>
                                                        <c:if test="${pagingVO.curentPageNo+3 <= pagingVO.totalCount}">
                                                            <li>
                                                                <a href="/admin/showTeacher?page=${pagingVO.curentPageNo+3}">${pagingVO.curentPageNo+3}</a>
                                                            </li>
                                                        </c:if>
                                                        <c:if test="${pagingVO.curentPageNo+4 <= pagingVO.totalCount}">
                                                            <li>
                                                                <a href="/admin/showTeacher?page=${pagingVO.curentPageNo+4}">${pagingVO.curentPageNo+4}</a>
                                                            </li>
                                                        </c:if>
                                                        <li><a href="/admin/showTeacher?page=${pagingVO.totalCount}">最后一页&raquo;</a>
                                                        </li>
                                                    </ul>
                                                </nav>
                                            </c:if>
                                        </div>
                                    </div>
                                </div>
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
    $("#nav li:nth-child(2)").addClass("active");

    function confirmd() {
        var msg = "您真的确定要删除吗？！";
        if (confirm(msg) == true) {
            return true;
        } else {
            return false;
        }
    };

    $("#sub").click(function () {
        $("#form1").submit();
    });

    <c:if test="${pagingVO != null}">
    if (${pagingVO.curentPageNo} == ${pagingVO.totalCount}) {
        $(".pagination li:last-child").addClass("disabled")
    }
    ;

    if (${pagingVO.curentPageNo} == ${1}) {
        $(".pagination li:nth-child(1)").addClass("disabled")
    }
    ;
    </c:if>
</script>
</html>