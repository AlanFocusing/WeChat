<%--
  Created by IntelliJ IDEA.
  User: 24678
  Date: 2019/9/12
  Time: 10:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>个人</title>
    <!-- 引入 WeUI -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/weui/2.0.1/style/weui.min.css" />
    <script src="icon/iconfont.js"></script>
    <style>
        .icon {
            width: 25px;
            height: 23px;
            vertical-align: -0.5em;
            fill: currentColor;
            overflow: hidden;
        }
    </style>
    <style>
        body {
            background-color: #F5F0FF;
        }

        #bottom {
            width: 100%;
            height: 50px;
            background-color: red;
            position: fixed;
            bottom: 0px;
        }

        #bottom li {
            width: 20%;
            list-style-type: none;
            float: left;
            text-align: center;
            color: white;
            padding-top: 3px
        }

        .home_bottom_font {
            font-size: 13px;
            font-weight: 600;
        }

        a:link {
            color: white;
        }
    </style>
    <style>
        #user_img,#img_src{
            width: 80px;
            height: 80px;
            border-radius: 45%;
        }
        #user_name{
            color: white;
            margin-left: 20px;
            margin-top: 20px;
            font-size: 18px;
        }
        #user_img{
            margin-top: 10px;
            margin-left: 10px;
        }
        #user_img,#user_name{
            float: left;
        }
        .user_info{
            width: 100%;
            height: 120px;
            background-color: red;
        }
    </style>
</head>

<body>
<div class="user_info">
    <div id="user_img"><img src="${cookie.avatar.value}" id="img_src"></div>
    <div id="user_name">${cookie.name.value}</div>
</div>
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
<script src="http://lib.sinaapp.com/js/jquery/3.1.0/jquery-3.1.0.min.js"></script>
<script>
    $(document).ready(function () {
        ///
        $('#bottom_user').css('color', 'yellow');
        $('#bottom li').click(function () {
            window.location.href=$(this).data('value');
        });
        ///
    });
</script>
</html>
