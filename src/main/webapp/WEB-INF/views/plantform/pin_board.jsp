<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/3/1
  Time: 9:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>后台主题UI框架 - 标签墙</title>
    <meta name="keywords" content="后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link href="${ctxStatic}/plantform/css/bootstrap.min.css"   rel="stylesheet">
    <link href="${ctxStatic}/plantform/css/font-awesome.min.css"   rel="stylesheet">

    <link href="${ctxStatic}/plantform/css/animate.min.css"   rel="stylesheet">
    <link href="${ctxStatic}/plantform/css/style.min.css"   rel="stylesheet">
    <style>
        #add-chat{
            position:fixed;
            bottom:10px;
            right:26px;
            z-index:100}
        .open-add-chat{
            height: 38px;
            width: 38px;
            display: block;
            background: #1ab394 url("${ctxStatic}/plantform/img/add.jpg") no-repeat center;
            background-size: 40px 40px;
            padding: 9px 8px;
            text-align: center;
            color: #fff;
            border-radius: 50%;}
    </style>
</head>

<body class="gray-bg">
<div class="row">
    <div class="col-sm-12">
        <div class="wrapper wrapper-content animated fadeInUp">
            <ul class="notes">
                <c:forEach items="${pinBoardList}" var="pinBoard" varStatus="status">
                    <li>
                        <div>
                            <small>${pinBoard.createTime}</small>
                            <h4>${pinBoard.title}</h4>
                            <p>${pinBoard.comment}</p>
                            <a href="#"><i class="fa fa-trash-o "></i></a>
                        </div>
                    </li>
                </c:forEach>
            </ul>
        </div>
    </div>

    <div id="add-chat">
        <a class="open-add-chat pin-board-add-view" href="#">
        </a>
    </div>
</div>
<script id="pin-board-add" type="text/x-handlebars-template">
    <div class="ibox-content">
        <form class="form-horizontal m-t" id="pin-board-addForm" action="${ctxSys}/pin_board">
            <div class="form-group">
                <label class="col-sm-3 control-label">姓名：</label>
                <div class="col-sm-8">
                    <input id="cname" name="name" minlength="2" type="text" class="form-control" required="" aria-required="true">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-3 control-label">E-mail：</label>
                <div class="col-sm-8">
                    <input id="cemail" type="email" class="form-control" name="email" required="" aria-required="true">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-3 control-label">网站：</label>
                <div class="col-sm-8">
                    <input id="curl" type="url" class="form-control" name="url">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-3 control-label">说明：</label>
                <div class="col-sm-8">
                    <textarea id="ccomment" name="comment" class="form-control" required="" aria-required="true"></textarea>
                </div>
            </div>
        </form>
    </div>
</script>

<!-- 全局js -->
<script src="${ctxStatic}/plantform/js/jquery-2.1.1.min.js"  ></script>
<script src="${ctxStatic}/plantform/js/bootstrap.min.js"  ></script>
<script src="${ctxStatic}/plantform/js/plugins/metisMenu/jquery.metisMenu.js" ></script>
<script src="${ctxStatic}/plantform/js/plugins/slimscroll/jquery.slimscroll.min.js" ></script>
<script src="${ctxStatic}/plantform/js/plugins/layer/layer.min.js" ></script>

<!-- 自定义js -->
<script src="${ctxStatic}/plantform/js/hplus.min.js" ></script>
<script type="text/javascript" src="${ctxStatic}/plantform/js/contabs.min.js"></script>

<!-- 自定义js -->
<script src="${ctxStatic}/plantform/js/content.min.js-v=1.0.0"  ></script>
<!-- 第三方插件 -->
<script src="${ctxStatic}/plantform/js/plugins/pace/pace.min.js"></script>
<!-- 欢迎信息 -->
<script src="${ctxStatic}/plantform/js/welcome.js"  ></script>
</body>

</html>
