<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/2/21
  Time: 10:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>后台主题UI框架 - 布局</title>
    <meta name="keywords" content="后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link href="${ctxStatic}/plantform/css/bootstrap.min.css"   rel="stylesheet">
    <link href="${ctxStatic}/plantform/css/font-awesome.min.css"   rel="stylesheet">

    <!-- Morris -->
    <link href="${ctxStatic}/plantform/css/plugins/morris/morris-0.4.3.min.css"   rel="stylesheet">

    <link href="${ctxStatic}/plantfForm/css/animate.min.css"   rel="stylesheet">
    <link href="${ctxStatic}/plantform/css/style.min.css"   rel="stylesheet">

</head>

<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-content text-center p-md">

                    <h2><span class="text-navy">后台主题UI框架</span>
                        提供两种主要布局和3套皮肤可供选择</h2>

                    <p>
                        所有设置您可以点击页面右上侧的绿色齿轮图标查看效果。
                    </p>


                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-6">
            <div class="ibox float-e-margins">
                <div class="ibox-content text-center p-md">

                    <h4 class="m-b-xxs">上下式布局（可选布局）<span class="label label-primary">新</span></h4>
                    <p>可选择的配置选项</p>
                    <span class="simple_tag">滚动导航栏(Scroll navbar)</span>
                    <span class="simple_tag">顶部固定导航栏(Top fixed navbar)</span>
                    <span class="simple_tag">盒式布局(Boxed layout)</span>
                    <span class="simple_tag">滚动页脚(Scroll footer)</span>
                    <span class="simple_tag">固定页脚(Fixed footer)</span>
                    <div class="m-t-md">
                        <p>点击以下图片查看效果：</p>
                        <div class="p-lg ">
                            <a href="index_v5.html"   target="_blank">
                                <img class="img-responsive img-shadow" src="${ctxStatic}/plantform/img/index_4.jpg"   alt="">
                            </a>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <div class="col-sm-6">
            <div class="ibox float-e-margins">
                <div class="ibox-content text-center p-md">

                    <h4 class="m-b-xxs">左右式布局（经典布局）</h4>
                    <p>可选择的配置选项</p>
                    <span class="simple_tag">折叠菜单(Collapse menu)</span>
                    <span class="simple_tag">滚动菜单栏(Scroll navbar)</span>
                    <span class="simple_tag">固定顶部菜单栏(Top fixed navbar)</span>
                    <span class="simple_tag">盒式布局(Boxed layout)</span>
                    <div class="m-t-md">
                        <p>点击以下图片查看效果：</p>
                        <div class="p-lg">
                            <a href="javascript:;">
                                <img class="img-responsive img-shadow" src="${ctxStatic}/plantform/img/index.jpg"   alt="">
                            </a>
                        </div>
                    </div>
                </div>
            </div>

        </div>


    </div>


</div>


<!-- 全局js -->
<script src="${ctxStatic}/plantform/js/jquery-2.1.1.min.js"  ></script>
<script src="${ctxStatic}/plantform/js/bootstrap.min.js"  ></script>

<!-- 自定义js -->
<script src="${ctxStatic}/plantform/js/content.min.js-v=1.0.0"  ></script>




</body>

</html>
