<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/2/21
  Time: 15:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>后台主题UI框架 - 登录</title>
    <meta name="keywords" content="后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link href="${ctxStatic}/plantform/css/bootstrap.min.css"   rel="stylesheet">
    <link href="${ctxStatic}/plantform/css/font-awesome.min.css"   rel="stylesheet">

    <link href="${ctxStatic}/plantform/css/animate.min.css"   rel="stylesheet">
    <link href="${ctxStatic}/plantform/css/style.min.css"   rel="stylesheet">
    <script>if(window.top !== window.self){ window.top.location = window.location;}</script>

</head>

<body class="gray-bg">

<div class="middle-box text-center loginscreen  animated fadeInDown">
    <div>
        <div>

            <h1 class="logo-name">H+</h1>

        </div>
        <h3>欢迎使用 H+</h3>

        <form class="m-t" role="form" action="${ctxSys}/index">
            <div class="form-group">
                <input type="email" class="form-control" placeholder="用户名" required="">
            </div>
            <div class="form-group">
                <input type="password" class="form-control" placeholder="密码" required="">
            </div>
            <button type="submit" class="btn btn-primary block full-width m-b">登 录</button>


            <p class="text-muted text-center"> <a href="login.html#"  ><small>忘记密码了？</small></a> | <a href="${ctxSys}/toRegister"  >注册一个新账号</a>
            </p>

        </form>
    </div>
</div>

<!-- 全局js -->
<script src="${ctxStatic}/plantform/js/jquery-2.1.1.min.js"  ></script>
<script src="${ctxStatic}/plantform/js/bootstrap.min.js"  ></script>



</body>

</html>