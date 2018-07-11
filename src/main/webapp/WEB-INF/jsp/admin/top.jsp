
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--shiro标签--%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!-- 顶栏 -->
<!-- 顶栏 -->
<nav class="navbar navbar-default header navbar-fixed-top">
    <div class="col-md-12 nav-wrapper">
        <div class="navbar-header" style="width:100%;">
            <div class="opener-left-menu is-open"><span class="top"></span> <span class="middle"></span> <span
                    class="bottom"></span></div>
            <a href="/admin/index" class="navbar-brand"> <b>教务OA网站后台</b> </a>
            <ul class="nav navbar-nav navbar-right user-nav">
                <li class="user-name"><span><shiro:principal/></span></li>
                <li class="dropdown avatar-dropdown"><img src="../../../img/avatar.jpg" class="img-circle avatar"
                                                          alt="user name" data-toggle="dropdown" aria-haspopup="true"
                                                          aria-expanded="true"/>
                    <ul class="dropdown-menu user-dropdown">
                        <li><a href="/logout"><span class="fa fa-power-off"></span> 退出登录</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>