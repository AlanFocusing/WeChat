<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 2019/9/17
  Time: 14:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>


<!--底部导航栏-->
<div id="bottom">
    <ul>
        <li id="bottom_home" data-value="/home">
            <svg class="icon" aria-hidden="true">
                <use xlink:href="#icon-home"></use>
            </svg>
            <div class="home_bottom_font">首页</div>
        </li>
        <li id="bottom_share" data-value="#">
            <svg class="icon" aria-hidden="true">
                <use xlink:href="#icon-share"></use>
            </svg>
            <div class="home_bottom_font">动态</div>
        </li>
        <li id="bottom_study" data-value="#">
            <svg class="icon" aria-hidden="true">
                <use xlink:href="#icon-read"></use>
            </svg>
            <div class="home_bottom_font">学习</div>
        </li>
        <li id="bottom_team" data-value="#">
            <svg class="icon" aria-hidden="true">
                <use xlink:href="#icon-team"></use>
            </svg>
            <div class="home_bottom_font">组织</div>
        </li>
        <li id="bottom_user" data-value="/user">
            <svg class="icon" aria-hidden="true">
                <use xlink:href="#icon-user"></use>
            </svg>
            <div class="home_bottom_font">个人</div>
        </li>
    </ul>
</div>


</body>
</html>
