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
                    <h3 class="animated fadeInLeft">图表展示</h3>
                    <p class="animated fadeInDown"><span class="fa fa-map-marker"></span> 开发部</p>
                </div>
            </div>
        </div>
        <div class="col-md-12" style="padding:5px;">
            <div class="col-md-12 padding-0">
                <div class="col-md-12 padding-0">
                    <div class="col-md-12 padding-0">
                        <div class="col-md-12">
                            <div class="panel box-v1">
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
                                        <%--<li class="text-left"><span class="right">2017-11-18</span><a href="#"><span--%>
                                        <%--class="fa fa-angle-right"></span> 通知公告列表文字</a></li>--%>
                                        <li class="text-left">

                                            <span class="fa fa-angle-right"></span>所涉及的课程有
                                            <a href="#" style="font-size: 20px">${countCouse}</a>门课程，
                                            <span class="fa fa-angle-right"></span>学生总共有
                                            <a href="#" style="font-size: 20px">${countStudent}</a>名，
                                            <span class="fa fa-angle-right"></span>老师总共有
                                            <a href="#" style="font-size: 20px">${countTeacher}</a>人。

                                        </li>

                                    </ul>
                                    <ul class="normal-list">
                                        <%--<li class="text-left"><span class="right">2017-11-18</span><a href="#"><span--%>
                                        <%--class="fa fa-angle-right"></span> 通知公告列表文字</a></li>--%>
                                        <li class="text-left">
                                            <span class="fa fa-angle-right"></span>本大学师资有
                                            <a href="#" style="font-size: 20px">${degreeA}</a>名博士，
                                            <span class="fa fa-angle-right"></span>有
                                            <a href="#" style="font-size: 20px">${degreeB}</a>名硕士，
                                            <span class="fa fa-angle-right"></span>有
                                            <a href="#" style="font-size: 20px">${degreeC}</a>名学士。
                                        </li>

                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 padding-0">
                        <div class="col-md-6">
                            <div class="panel box-v1" id="main2" style="width: 600px;height:400px;">

                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="panel box-v1" id="main" style="width: 600px;height:400px;">

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
<script>
    $("#left-menu-4").click();
</script>
<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var url = '${pageContext.request.contextPath}/admin/indexjson';
    $.ajax({
        url: url,
        type: 'GET',
        dataType: 'json',
        timeout: 1000,
        cache: false,
        // beforeSend: LoadFunction, //加载执行方法
        // error: erryFunction,  //错误执行方法
        success: succFunction //成功执行方法
    })

    function LoadFunction() {
        $(document.getElementById('main')).html('加载中...');
    }

    function erryFunction() {
        alert("error");
    }

    function succFunction(data) {
        var json = eval(data); //数组
        // alert(json);
        var courseCount = json.courseCount;
        var studentCount = json.studentCount;
        var teacherCount = json.teacherCount;
        var option2 = {
            color: ['#3398DB'],
            tooltip: {
                trigger: 'axis',
                axisPointer: {            // 坐标轴指示器，坐标轴触发有效
                    type: 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                }
            },
            grid: {
                left: '3%',
                right: '4%',
                bottom: '3%',
                containLabel: true
            },
            xAxis: [
                {
                    type: 'category',
                    data: ['课程总数', '学生总数', '老师总数'],
                    axisTick: {
                        alignWithLabel: true
                    }
                }
            ],
            yAxis: [
                {
                    type: 'value'
                }
            ],
            series: [
                {
                    name: '直接访问',
                    type: 'bar',
                    barWidth: '60%',
                    data: [courseCount, studentCount, teacherCount]
                }
            ]
        };

        var myChart = echarts.init(document.getElementById('main'));
        myChart.setOption(option2);
    }
</script>
<script>
    var url = '${pageContext.request.contextPath}/admin/indexjson2';
    $.ajax({
        url: url,
        type: 'GET',
        dataType: 'json',
        timeout: 1000,
        cache: false,
        // beforeSend: LoadFunction, //加载执行方法
        // error: erryFunction,  //错误执行方法
        success: succFunction //成功执行方法
    })

    function LoadFunction() {
        $(document.getElementById('main2')).html('加载中...');
    }

    function erryFunction() {
        alert("error");
    }

    function succFunction(data) {
        var json = eval(data); //数组
        // alert(json);
        var degreeA = json.degreeA;
        // alert(degreeA);
        var degreeB = json.degreeB;
        var degreeC = json.degreeC;
        var dom = document.getElementById("main2");
        var myChart = echarts.init(dom);
        var app = {};
        option = null;
        option = {
            title: {
                text: '师资分布数据',
                subtext: '纯属虚构',
                x: 'center'
            },
            tooltip: {
                trigger: 'item',
                formatter: "{a} <br/>{b} : {c} ({d}%)"
            },
            legend: {
                orient: 'vertical',
                left: 'left',
                data: ['博士', '硕士', '学士']
            },
            series: [
                {
                    name: '访问来源',
                    type: 'pie',
                    radius: '55%',
                    center: ['50%', '60%'],
                    data: [
                        {value: degreeA, name: '博士'},
                        {value: degreeB, name: '硕士'},
                        {value: degreeC, name: '学士'}
                    ],
                    itemStyle: {
                        emphasis: {
                            shadowBlur: 10,
                            shadowOffsetX: 0,
                            shadowColor: 'rgba(0, 0, 0, 0.5)'
                        }
                    }
                }
            ]
        };
        if (option && typeof option === "object") {
            myChart.setOption(option, true);
        }
    }

</script>
<!-- end: Javascript -->
<div style="text-align:center;">
    <p>本页面图表源自于：<a href="http://echarts.baidu.com/examples/" target="_blank">echarts 一个纯javascript图表库</a></p>
</div>
</body>
</html>