<%--
  Created by IntelliJ IDEA.
  User: 24678
  Date: 2019/9/12
  Time: 10:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>首页</title>
    <!-- 引入 WeUI -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/weui/2.0.1/style/weui.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.0/css/swiper.min.css">
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
        .swiper-slide {
            background-color: white;
        }

        .swiper-container {
            height: 150px;
        }

        .my-bullet-active {
            background: red;
            opacity: 1;
        }

        .function {
            width: 100%;
            height: 120px;
            background-color: white;
        }

        .function li {
            width: 20%;
            list-style-type: none;
            float: left;
            text-align: center;
            padding-top: 3px;
            margin-bottom: 10px;
        }

        .notice {
            width: 100%;
            height: 40px;
            background-color: white;
            margin-top: 12px;
            margin-bottom: 12px;
        }

        .weui-cell {
            padding: 8px;
        }

        .weui-cell:before {
            left: 0
        }

        .weui-cell_example {
            height: 80px;
            padding-left: 12px;
            padding-right: 10px;
        }

        .concent {
            width: 60%;
            height: 70px;
        }

        .image {
            margin-left: 5%;
            background-color: red;
            width: 35%;
            height: 70px;
        }

        .title {
            width: 100%;
            height: 45px;
            margin-bottom: 8px;
        }

        .concent_type,
        .concent_date {
            float: left;
            width: 40%;
            height: 15px;
            font-size: 13px;
        }

        .concent_date {
            margin-left: 10%;
        }

        .content_bottom {
            height: 75px;
            width: 100%;
            background-color: #F5F0FF;
            text-align: center;
            font-size: 13px;
            padding-top: 10px;
        }
    </style>
</head>

<body>
<!--轮播图-->
<div class="swiper-container">
    <div class="swiper-wrapper">
        <div class="swiper-slide">1</div>
        <div class="swiper-slide">2</div>
        <div class="swiper-slide">3</div>
    </div>
    <!-- 如果需要分页器 -->
    <div class="swiper-pagination"></div>
</div>
<!--功能区-->
<div class="function">
    <ul>
        <li id="function_huiyi">
            <svg class="icon" aria-hidden="true">
                <use xlink:href="#icon-dangzhenglianxihuiyi"></use>
            </svg>
            <div class="home_bottom_font">三会一课</div>
        </li>
        <li id="function_exam">
            <svg class="icon" aria-hidden="true">
                <use xlink:href="#icon-lianxi"></use>
            </svg>
            <div class="home_bottom_font">在线考试</div>
        </li>
        <li id="function_home">
            <svg class="icon" aria-hidden="true">
                <use xlink:href="#icon-jifen"></use>
            </svg>
            <div class="home_bottom_font">我的积分</div>
        </li>
        <li id="function_birth">
            <svg class="icon" aria-hidden="true">
                <use xlink:href="#icon-team"></use>
            </svg>
            <div class="home_bottom_font">政治生日</div>
        </li>
        <li id="function_people">
            <svg class="icon" aria-hidden="true">
                <use xlink:href="#icon-jubandangke"></use>
            </svg>
            <div class="home_bottom_font">党史人物</div>
        </li>
        <li id="function_luntan">
            <svg class="icon" aria-hidden="true">
                <use xlink:href="#icon-luntanzixun"></use>
            </svg>
            <div class="home_bottom_font">党员论坛</div>
        </li>
        <li id="function_more">
            <svg class="icon" aria-hidden="true">
                <use xlink:href="#icon-gengduo"></use>
            </svg>
            <div class="home_bottom_font">更多</div>
        </li>
    </ul>
</div>
<!--公告-->
<div class="notice">
    <a class="weui-cell weui-cell_access">
        <div class="weui-cell__bd">
            <p>123</p>
        </div>
        <div class="weui-cell__ft"></div>
    </a>
</div>
<!--列表展示-->
<div class="weui-cells">
    <div class="weui-cell weui-cell_example">
        <div class="concent">
            <div class="title">1233131131321231</div>
            <div class="concent_type">党建要闻</div>
            <div class="concent_date">2019-08-14</div>
        </div>
        <div class="image">
        </div>
    </div>
    <div class="weui-cell weui-cell_example">
        <div class="concent">
            <div class="title">1233131131321231</div>
            <div class="concent_type">党建要闻</div>
            <div class="concent_date">2019-08-14</div>
        </div>
        <div class="image">
        </div>
    </div>
    <div class="weui-cell weui-cell_example">
        <div class="concent">
            <div class="title">1233131131321231</div>
            <div class="concent_type">党建要闻</div>
            <div class="concent_date">2019-08-14</div>
        </div>
        <div class="image">
        </div>
    </div>
    <div class="weui-cell weui-cell_example">
        <div class="concent">
            <div class="title">1233131131321231</div>
            <div class="concent_type">党建要闻</div>
            <div class="concent_date">2019-08-14</div>
        </div>
        <div class="image">
        </div>
    </div>
    <div class="content_bottom">
        没有更多内容...
    </div>
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.0/js/swiper.min.js"></script>
<script>
    $(document).ready(function () {
        ///底部导航栏
        $('#bottom_home').css('color', 'yellow');
        $('#bottom li').click(function () {
            window.location.href=$(this).data('value');
        });
        ///
        var swiper = new Swiper('.swiper-container', {
            //分页器
            pagination: {
                el: '.swiper-pagination',
                //bulletClass : 'my-bullet',
                bulletActiveClass: 'my-bullet-active',
            },
            //自动轮播
            autoplay: {
                disableOnInteraction: true,//用户操作之后是否停止自动轮播默认true
            },
            loop: true,//循环 最后面一个往后面滑动会滑到第一个
        });
    });
</script>

</html>
