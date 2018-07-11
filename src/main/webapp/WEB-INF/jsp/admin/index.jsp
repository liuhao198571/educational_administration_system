<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%--shiro标签--%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
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
                <div class="col-md-6 col-sm-12">
                    <h3 class="animated fadeInLeft">欢迎您：<shiro:principal/></h3>
                    <p class="animated fadeInDown"><span class="fa fa-map-marker"></span> 开发部</p>
                </div>
            </div>
        </div>
        <div class="col-md-12" style="padding:5px;">
            <div class="col-md-12 padding-0">
                <div class="col-md-12 padding-0">
                    <div class="col-md-12 padding-0">
                        <div class="col-md-6">
                            <div class="panel box-v1" id="main2" style="width: 600px;height:400px;">
                                <div class="panel-heading bg-white border-none">
                                    <div class="col-md-6 col-sm-6 col-xs-6 text-left padding-0">
                                        <h4 class="text-left">数据汇总（有模拟色彩）</h4>
                                    </div>
                                    <div class="col-md-6 col-sm-6 col-xs-6 text-right">
                                        <h4><span class="icon-user icons icon text-right"></span></h4>
                                    </div>
                                </div>
                                <div class="panel-body text-center">
                                    <ul class="normal-list">
                                        <li class="text-left">

                                            <span class="fa fa-angle-right"></span>所涉及的课程有
                                            <a href="/admin/showCourseCharts" style="font-size: 20px">${countCouse}</a>门课程，
                                            <span class="fa fa-angle-right"></span>学生总共有
                                            <a href="/admin/showCourseCharts"
                                               style="font-size: 20px">${countStudent}</a>名，
                                            <span class="fa fa-angle-right"></span>老师总共有
                                            <a href="/admin/showCourseCharts"
                                               style="font-size: 20px">${countTeacher}</a>人。

                                        </li>

                                    </ul>
                                    <ul class="normal-list">
                                        <li class="text-left">
                                            <span class="fa fa-angle-right"></span>本大学师资有
                                            <a href="/admin/showCourseCharts" style="font-size: 20px">${degreeA}</a>名博士，
                                            <span class="fa fa-angle-right"></span>有
                                            <a href="/admin/showCourseCharts" style="font-size: 20px">${degreeB}</a>名硕士，
                                            <span class="fa fa-angle-right"></span>有
                                            <a href="/admin/showCourseCharts" style="font-size: 20px">${degreeC}</a>名学士。
                                        </li>

                                    </ul>
                                    <hr>
                                    <ul class="normal-list">
                                        <li class="text-left" style="text-align:center;">
                                            <a href="#" style="font-size: 18px">未完待续...</a>
                                        </li>

                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="panel box-v1" id="main" style="width: 600px;height:400px;">
                                <div class="panel box-v1" id="main2" style="width: 600px;height:400px;">
                                    <div class="panel-heading bg-white border-none">
                                        <div class="col-md-6 col-sm-6 col-xs-6 text-left padding-0">
                                            <h4 class="text-left">项目参数：</h4>
                                        </div>
                                        <div class="col-md-6 col-sm-6 col-xs-6 text-right">
                                            <h4><span class="icon-user icons icon text-right"></span></h4>
                                        </div>
                                    </div>
                                    <div class="panel-body text-center">
                                        <ul class="normal-list">
                                            <li class="text-left">
                                                <span class="fa fa-angle-right"></span>开发工具：
                                                <a href="https://www.jetbrains.com/idea/" style="font-size: 20px">IDEA
                                                    2018.1</a>
                                            </li>
                                        </ul>
                                        <ul class="normal-list">
                                            <li class="text-left">
                                                <span class="fa fa-angle-right"></span>jdk版本：
                                                <a href="http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html"
                                                   style="font-size: 20px">jdk1.8.0_171</a>
                                            </li>
                                        </ul>
                                        <ul class="normal-list">
                                            <li class="text-left">
                                                <span class="fa fa-angle-right"></span>Maven版本：
                                                <a href="http://maven.apache.org/docs/history.html"
                                                   style="font-size: 20px">apache-maven-3.5.3</a>
                                            </li>
                                        </ul>
                                        <ul class="normal-list">
                                            <li class="text-left">
                                                <span class="fa fa-angle-right"></span>Tomcat版本：
                                                <a href="https://tomcat.apache.org/" style="font-size: 20px">apache-tomcat-8.5.30</a>
                                            </li>
                                        </ul>
                                        <ul class="normal-list">
                                            <li class="text-left">
                                                <span class="fa fa-angle-right"></span>前端框架：
                                                <a href="https://v3.bootcss.com/" style="font-size: 20px">Bootstrap
                                                    3.3.7</a>
                                            </li>
                                        </ul>
                                        <ul class="normal-list">
                                            <li class="text-left">
                                                <span class="fa fa-angle-right"></span>后端框架：
                                                <a href="https://spring.io/" style="font-size: 20px">Spring
                                                    4.3.8、SpringMVC 4.3.7、Mybatis3.4.1</a>
                                            </li>
                                        </ul>
                                        <hr>
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
<script src="../../../js/echarts.min.js"></script>
<!-- end: Javascript -->
<div style="text-align:center;">
    <p>本系统前端页面源自于：<a href="https://v3.bootcss.com/css/" target="_blank">Bootstrap 一个简洁、灵活的前端框架</a></p>
</div>
</body>
</html>