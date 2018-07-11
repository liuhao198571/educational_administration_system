<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div id="left-menu">
    <div class="sub-left-menu scroll">
        <ul class="nav nav-list">
            <li>
                <div class="left-bg"></div>
            </li>
            <li class=" ripple"><a class="tree-toggle nav-header" id="left-menu-1">
            <li><a href="/admin/index">首&nbsp;页</a></li>
            </li>

            <li class=" ripple"><a class="tree-toggle nav-header" id="left-menu-2">>
                <span class="fa fa-check-square-o"></span> 业务管理
                <span class="fa-angle-right fa right-arrow text-right"></span></a>
                <ul class="nav nav-list tree">
                    <li><a href="/admin/showCourse">课程管理</a></li>
                    <li><a href="/admin/showStudent">学生管理</a></li>
                    <li><a href="/admin/showTeacher">教师管理</a></li>
                </ul>
            </li>
            <li class=" ripple"><a class="tree-toggle nav-header" id="left-menu-4">>
                <span class="fa fa-check-square-o"></span> 数据显示
                <span class="fa-angle-right fa right-arrow text-right"></span></a>
                <ul class="nav nav-list tree">
                    <li><a href="/admin/showCourseCharts">图表</a></li>

                </ul>
            </li>
            <li class=" ripple"><a class="tree-toggle nav-header" id="left-menu-3">>
                <span class="fa fa-check-square-o"></span> 密码管理
                <span class="fa-angle-right fa right-arrow text-right"></span></a>
                <ul class="nav nav-list tree">
                    <li><a href="/admin/passwordRest">修改管理员</a></li>
                    <li><a href="/admin/userPasswordRest">修改非管理员</a></li>
                </ul>
            </li>


            <li class=" ripple"><a href="/logout"><span
                    class="fa fa-calendar-o"></span> 退出系统 <span
                    class="fa-angle-right fa right-arrow text-right"></span> </a></li>
        </ul>
    </div>
</div>