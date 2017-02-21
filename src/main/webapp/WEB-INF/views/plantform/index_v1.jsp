<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/2/20
  Time: 13:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--360浏览器优先以webkit内核解析-->
    <title>后台主题UI框架 - 主页示例</title>
    <link href="${ctxStatic}/plantform/css/bootstrap.min.css"   rel="stylesheet">
    <link href="${ctxStatic}/plantform/css/font-awesome.min.css"   rel="stylesheet">
    <link href="${ctxStatic}/plantform/css/animate.min.css"   rel="stylesheet">
    <link href="${ctxStatic}/plantform/css/style.min.css"   rel="stylesheet">
</head>

<body>
<div class="row  border-bottom white-bg dashboard-header">
    <div class="col-sm-5">
        <h2>
            后台主题UI框架
        </h2>
        <p>是一个完全响应式，基于Bootstrap3.3.4最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术，她提供了诸多的强大的可以重新组合的UI组件，并集成了最新的jQuery版本(v2.1.1)，当然，也集成了很多功能强大，用途广泛的jQuery插件，她可以用于所有的Web应用程序，如<b>网站管理后台</b>，<b>网站会员中心</b>，<b>CMS</b>，<b>CRM</b>，<b>OA</b>等等，当然，您也可以对她进行深度定制，以做出更强系统。</p>
        <p>
            <b>当前版本：</b>v3.2.0
        </p>
        <br>
    </div>
    <div class="col-sm-4">
        <h4>具有以下特点：</h4>
        <ol>
            <li>完全响应式布局（支持电脑、平板、手机等所有主流设备）</li>
            <li>基于最新版本的Bootstrap 3.3.4</li>
            <li>提供3套不同风格的皮肤</li>
            <li>支持多种布局方式</li>
            <li>使用最流行的的扁平化设计</li>
            <li>提供了诸多的UI组件</li>
            <li>集成多款国内优秀插件，诚意奉献</li>
            <li>提供盒型、全宽、响应式视图模式</li>
            <li>采用HTML5 & CSS3</li>
            <li>拥有良好的代码结构</li>
        </ol>
    </div>

</div>
<div class="wrapper wrapper-content">
    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>更新日志</h5>
                </div>
                <div class="ibox-content no-padding">
                    <div class="panel-body">
                        <div class="panel-group" id="version">
                            <c:forEach items="${versionList}" var="versionControl" varStatus="status">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h5 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#version" href="#${versionControl.id}">${versionControl.title}</a><code class="pull-right">${versionControl.createDate}更新</code>
                                        </h5>
                                    </div>
                                    <c:choose>
                                        <c:when test="${status.index == 0}">
                                    <div id="${versionControl.id}" class="panel-collapse collapse in">
                                        </c:when>
                                        <c:otherwise>
                                    <div id="${versionControl.id}" class="panel-collapse collapse">
                                        </c:otherwise>
                                    </c:choose>
                                        <div class="panel-body">
                                            <ol>
                                                <c:if test="${versionControl.contents != null}">
                                                    <c:forEach items="${versionControl.contents}" var="versionInfo" varStatus="status">
                                                        <li>${versionInfo}</li>
                                                    </c:forEach>
                                                </c:if>
                                            </ol>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h5 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#version" href="#v30">v3.0</a>
                                    </h5>
                                </div>
                                <div id="v30" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ol>
                                            <li>今天是情人节，终于跨到了v3.0，就是是情人节礼物吧，感谢你们的不离不弃，一路相伴！ <a href="#" class="viewlog"><i class="fa fa-eye"></i> 查看升级日志</a>
                                            </li>
                                            <li><span class="text-danger">注意：</span>本次更新调整较大，不建议直接覆盖升级！</li>
                                        </ol>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </div>
</div>
<script id="welcome-template" type="text/x-handlebars-template">
    <div class="border-bottom white-bg page-heading clearfix">
        <h2>更新日志：</h2>
        <div>今天是情人节，终于跨到了v3.0，就算是情人节礼物吧，感谢你们的不离不弃，一路相伴！</div>
        <div class="pull-right">——*** / 2017.2.21</div>
    </div>
    <div class="m">
        <div class="tabs-container">
            <div class="tabs-left">
                <ul class="nav nav-tabs">
                    <li class="active">
                        <a data-toggle="tab" href="#layouts"><i class="fa fa-columns"></i> 布局
                        </a>
                    </li>
                    <li>
                        <a data-toggle="tab" href="#new"><i class="fa fa-plus-square"></i> 新增
                        </a>
                    </li>
                    <li>
                        <a data-toggle="tab" href="#update"><i class="fa fa-arrow-circle-o-up"></i> 升级
                        </a>
                    </li>
                    <li>
                        <a data-toggle="tab" href="#revise"><i class="fa fa-pencil"></i> 修正
                        </a>
                    </li>
                    <li>
                        <a data-toggle="tab" href="#optimize"><i class="fa fa-magic"></i> 优化
                        </a>
                    </li>
                </ul>
                <div class="tab-content" style="line-height:1.8em;">
                    <div id="layouts" class="tab-pane active">
                        <div class="panel-body">
                            <ol class="no-left-padding">
                                <li class="text-danger"><b>推荐：</b>期待已久的contentTabs效果，支持关闭、双击刷新、左右滑动等；</li>
                                <li>固定左侧主菜单栏，并对菜单项做了新的调整；</li>
                                <li>增加右侧面板及聊天窗口等。</li>
                            </ol>

                            <p style="margin-left:25px;"><hr><span class="label label-danger">特别致谢</span> 感谢[子·梦]同学提供的contentTabs优化方案和代码！</p>
                        </div>
                    </div>
                    <div id="new" class="tab-pane">
                        <div class="panel-body">
                            <ol class="no-left-padding">
                                <li>表单：搜索自动补全插件suggest、高级表单插件（时间选择，切换按钮，图像裁剪上传，单选复选框美化，文件域美化等)等；</li>
                                <li>图表：图表组合页面等；</li>
                                <li>页面：团队、社交、客户管理、文章列表、文章详情、新登录页面等；</li>
                                <li>UI元素：竖向选项卡、拖动面板、文本对比、加载动画、SweetAlert等；</li>
                                <li>相册：layer相册、Blueimp相册等；</li>
                                <li>表格：FooTables等。</li>
                            </ol>
                        </div>
                    </div>
                    <div id="update" class="tab-pane">
                        <div class="panel-body">
                            <ol>
                                <li>页面弹层插件layer升级至1.9.3；</li>
                                <li>更新jqgrid，支持树形表格；</li>
                                <li>更新帮助文档。</li>
                            </ol>
                        </div>
                    </div>
                    <div id="revise" class="tab-pane">
                        <div class="panel-body">
                            <ol>
                                <li>jstree、Simditor等多处错误；</li>
                                <li>页面加载进度提示；</li>
                                <li>Glyphicon字体图标不显示的问题；</li>
                                <li>重新整理开发文档；</li>
                            </ol>
                        </div>
                    </div>
                    <div id="optimize" class="tab-pane">
                        <div class="panel-body">
                            <ol>
                                <li>整体视觉效果；</li>
                                <li>jstree默认主题显示效果；</li>
                                <li>表单验证显示效果；</li>
                                <li>iCheck显示效果；</li>
                                <li>Tabs显示效果。</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="alert alert-warning alert-dismissable m-t-sm">
            <button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button>
            同时这也是一个示例，演示了如何从iframe中弹出一个覆盖父页面的层。
        </div>
    </div>
</script>

<!-- 全局js -->
<script src="${ctxStatic}/plantform/js/jquery-2.1.1.min.js"  ></script>
<script src="${ctxStatic}/plantform/js/bootstrap.min.js"  ></script>
<script src="${ctxStatic}/plantform/js/plugins/layer/layer.min.js"  ></script>

<!-- 自定义js -->
<script src="${ctxStatic}/plantform/js/content.min.js"  ></script>

<!-- 欢迎信息 -->
<script src="${ctxStatic}/plantform/js/welcome.js"  ></script>
</body>

</html>