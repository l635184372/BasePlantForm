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
            H+ 后台主题UI框架
        </h2>
        <p>H+是一个完全响应式，基于Bootstrap3.3.4最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术，她提供了诸多的强大的可以重新组合的UI组件，并集成了最新的jQuery版本(v2.1.1)，当然，也集成了很多功能强大，用途广泛的jQuery插件，她可以用于所有的Web应用程序，如<b>网站管理后台</b>，<b>网站会员中心</b>，<b>CMS</b>，<b>CRM</b>，<b>OA</b>等等，当然，您也可以对她进行深度定制，以做出更强系统。</p>
        <p>
            <b>当前版本：</b>v3.2.0
        </p>
        <br>
    </div>
    <div class="col-sm-4">
        <h4>H+具有以下特点：</h4>
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

                            <%--<div class="panel panel-default">--%>
                                <%--<div class="panel-heading">--%>
                                    <%--<h5 class="panel-title">--%>
                                        <%--<a data-toggle="collapse" data-parent="#version" href="#v32">v3.2</a><code class="pull-right">2015.09.23更新</code>--%>
                                    <%--</h5>--%>
                                <%--</div>--%>
                                <%--<div id="v32" class="panel-collapse collapse in">--%>
                                    <%--<div class="panel-body">--%>
                                        <%--<ol>--%>
                                            <%--<li>修复360浏览器个别情况下崩溃的问题</li>--%>
                                            <%--<li>优化360浏览器的显示效果</li>--%>
                                            <%--<li>修复layim弹出聊天窗口出错的问题</li>--%>
                                            <%--<li>优化登录、注册、锁屏页面，使其在右侧主体区域打开时转到新页面打开</li>--%>
                                            <%--<li>优化了移动设备的展示效果</li>--%>
                                        <%--</ol>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>

                            <%----%>
                            <%--<div class="panel panel-default">--%>
                                <%--<div class="panel-heading">--%>
                                    <%--<h5 class="panel-title">--%>
                                        <%--<a data-toggle="collapse" data-parent="#version" href="#v31">v3.1</a>--%>
                                    <%--</h5>--%>
                                <%--</div>--%>
                                <%--<div id="v31" class="panel-collapse collapse">--%>
                                    <%--<div class="panel-body">--%>
                                        <%--<ol>--%>
                                            <%--<li>修复登录页面文本框输入字符不可见的问题</li>--%>
                                            <%--<li>修复火狐下conTabs关闭操作按钮不下拉的问题</li>--%>
                                            <%--<li>修复IOS系统下各种浏览器右侧内容不滚动的问题</li>--%>
                                            <%--<li>优化了主页示例三的显示</li>--%>
                                            <%--<li>修复了jqgrid编辑弹框导致页面错位的问题</li>--%>
                                            <%--<li>使百度Echarts图标支持响应式，并优化了其显示</li>--%>
                                            <%--<li>修复Summernote文本编辑器下拉菜单显示不全的问题</li>--%>
                                            <%--<li>修复Toastr通知图标显示多个的问题</li>--%>
                                        <%--</ol>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                            <%--<div class="panel panel-default">--%>
                                <%--<div class="panel-heading">--%>
                                    <%--<h5 class="panel-title">--%>
                                        <%--<a data-toggle="collapse" data-parent="#version" href="#v301">v3.0.x</a>--%>
                                    <%--</h5>--%>
                                <%--</div>--%>
                                <%--<div id="v301" class="panel-collapse collapse">--%>
                                    <%--<div class="panel-body">--%>
                                        <%--<p>自H+ v3.0版发布后，又陆续发布了7个小版本，修复了一些兼容性问题，但是没有对外发布，更新日志略过……</p>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                            <%--<div class="panel panel-default">--%>
                                <%--<div class="panel-heading">--%>
                                    <%--<h5 class="panel-title">--%>
                                        <%--<a data-toggle="collapse" data-parent="#version" href="#v30">v3.0</a>--%>
                                    <%--</h5>--%>
                                <%--</div>--%>
                                <%--<div id="v30" class="panel-collapse collapse">--%>
                                    <%--<div class="panel-body">--%>
                                        <%--<ol>--%>
                                            <%--<li>今天是情人节，H+终于跨到了v3.0，就是是情人节礼物吧，感谢你们的不离不弃，一路相伴！ <a href="#" class="viewlog"><i class="fa fa-eye"></i> 查看升级日志</a>--%>
                                            <%--</li>--%>
                                            <%--<li><span class="text-danger">注意：</span>本次更新调整较大，不建议直接覆盖升级！</li>--%>
                                        <%--</ol>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                            <%--<div class="panel panel-default">--%>
                                <%--<div class="panel-heading">--%>
                                    <%--<h5 class="panel-title">--%>
                                        <%--<a data-toggle="collapse" data-parent="#version" href="#v22">v2.2</a>--%>
                                    <%--</h5>--%>
                                <%--</div>--%>
                                <%--<div id="v22" class="panel-collapse collapse">--%>
                                    <%--<div class="panel-body">--%>
                                        <%--<ol>--%>
                                            <%--<li>根据用户的反馈，根据用户的反馈，移除了CDN支持，CDN服务将于2015年6月30日之后结束支持，如果您正在使用CDN服务，请尽快完成迁移，对于给您造成的不便，我们表示非常抱歉；--%>
                                            <%--</li>--%>
                                            <%--<li>升级Bootstrap到最新版本v3.3.4；--%>
                                            <%--</li>--%>
                                            <%--<li>修改了style.css，修复了其中的一些bug；--%>
                                            <%--</li>--%>

                                        <%--</ol>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                            <%--<div class="panel panel-default">--%>
                                <%--<div class="panel-heading">--%>
                                    <%--<h5 class="panel-title">--%>
                                        <%--<a data-toggle="collapse" data-parent="#version" href="#v21">v2.1</a>--%>
                                    <%--</h5>--%>
                                <%--</div>--%>
                                <%--<div id="v21" class="panel-collapse collapse">--%>
                                    <%--<div class="panel-body">--%>
                                        <%--<ol>--%>
                                            <%--<li>增加cdn服务支持，cdn节点使用阿里云服务，可保证您的项目随时使用最新版本的H+，免去反复升级的麻烦；--%>
                                            <%--</li>--%>
                                            <%--<li>修复一些问题；</li>--%>
                                        <%--</ol>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                            <%--<div class="panel panel-default">--%>
                                <%--<div class="panel-heading">--%>
                                    <%--<h5 class="panel-title">--%>
                                        <%--<a data-toggle="collapse" data-parent="#version" href="#v20">v2.0</a>--%>
                                    <%--</h5>--%>
                                <%--</div>--%>
                                <%--<div id="v20" class="panel-collapse collapse">--%>
                                    <%--<div class="panel-body">--%>
                                        <%--<ol>--%>
                                            <%--<li>增加RTL布局及RTL支持，可点击右上角齿轮按钮选择RTL模式查看；--%>
                                            <%--</li>--%>
                                            <%--<li>增加上下布局； <a href="javascript:if(confirm('http://www.zi-han.net/theme/hplus/index_4.html  \n\nlδ Teleport Pro  δl  \n\nΘ'))window.location='http://www.zi-han.net/theme/hplus/index_4.html'"   title="去看看"><i class="fa fa-eye"></i></a>--%>
                                            <%--</li>--%>
                                            <%--<li>在360浏览器6.0以上版本中强制以webkit内核解析，体验更佳；--%>
                                            <%--</li>--%>
                                            <%--<li>增加<a href="toastr_notifications.html"  >Toastr通知</a>、<a href="nestable_list.html"  >嵌套列表</a>、<a href="timeline_v2.html"  >时间轴</a>、<a href="forum_main.html"  >论坛</a>、<a href="code_editor.html"  >代码编辑器</a>、<a href="modal_window.html"  >模态窗口</a>、<a href="javascript:if(confirm('http://www.zi-han.net/theme/hplus/validation.html  \n\nlδ Teleport Pro  δl  \n\nΘ'))window.location='http://www.zi-han.net/theme/hplus/validation.html'"  >表单验证</a>、<a href="javascript:if(confirm('http://www.zi-han.net/theme/hplus/tree_view_v2.html  \n\nlδ Teleport Pro  δl  \n\nΘ'))window.location='http://www.zi-han.net/theme/hplus/tree_view_v2.html'"  >树形视图</a>、<a href="chat_view.html"  >聊天窗口</a>等页面；--%>
                                            <%--</li>--%>
                                            <%--<li>升级<a href="icons.html"  >Font Awesome</a>，<a href="form_simditor.html"  >Simditor</a>等到最新版本；--%>
                                            <%--</li>--%>
                                            <%--<li>优化部分内容--%>
                                            <%--</li>--%>

                                        <%--</ol>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                            <%--<div class="panel panel-default">--%>
                                <%--<div class="panel-heading">--%>
                                    <%--<h5 class="panel-title">--%>
                                        <%--<a data-toggle="collapse" data-parent="#version" href="#v18">v1.8</a>--%>
                                    <%--</h5>--%>
                                <%--</div>--%>
                                <%--<div id="v18" class="panel-collapse collapse">--%>
                                    <%--<div class="panel-body">--%>
                                        <%--<ol>--%>
                                            <%--<li>修复一些错误；--%>
                                            <%--</li>--%>
                                            <%--<li>修复了WebUploader中的一些问题； <a href="form_webuploader.html"   title="去看看"><i class="fa fa-eye"></i></a>--%>
                                            <%--</li>--%>
                                        <%--</ol>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                            <%--<div class="panel panel-default">--%>
                                <%--<div class="panel-heading">--%>
                                    <%--<h5 class="panel-title">--%>
                                        <%--<a data-toggle="collapse" data-parent="#version" href="#v17">v1.7</a>--%>
                                    <%--</h5>--%>
                                <%--</div>--%>
                                <%--<div id="v17" class="panel-collapse collapse">--%>
                                    <%--<div class="panel-body">--%>
                                        <%--<ol>--%>
                                            <%--<li>更新jquery版本到官方最新版v2.1.1；--%>
                                            <%--</li>--%>
                                            <%--<li>更新Bootstrap版本到官方最新版v3.3.0；--%>
                                            <%--</li>--%>
                                            <%--<li>增加jqGrid组件； <a href="table_jqgrid.html"   title="去看看"><i class="fa fa-eye"></i></a>--%>
                                            <%--</li>--%>
                                            <%--<li>修复Summernote编辑器中的一个严重错误； <a href="form_editors.html"   title="去看看"><i class="fa fa-eye"></i></a>--%>
                                            <%--</li>--%>
                                            <%--<li>修改了一些已知的bug，并修复了演示示例中的一些错误；--%>
                                            <%--</li>--%>
                                        <%--</ol>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                            <%--<div class="panel panel-default">--%>
                                <%--<div class="panel-heading">--%>
                                    <%--<h5 class="panel-title">--%>
                                        <%--<a data-toggle="collapse" data-parent="#version" href="#v16">v1.6</a>--%>
                                    <%--</h5>--%>
                                <%--</div>--%>
                                <%--<div id="v16" class="panel-collapse collapse">--%>
                                    <%--<div class="panel-body">--%>
                                        <%--<ol>--%>
                                            <%--<li>优化资源文件路径，删除多余文件--%>
                                            <%--</li>--%>
                                            <%--<li>增加Markdown编辑器 <a href="form_markdown.html"   title="去看看"><i class="fa fa-eye"></i></a>--%>
                                            <%--</li>--%>
                                            <%--<li>增加拾色器ColorPicker <a href="form_advanced.html"   title="去看看"><i class="fa fa-eye"></i></a>--%>
                                            <%--</li>--%>
                                            <%--<li>优化部分页面代码--%>
                                            <%--</li>--%>
                                        <%--</ol>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>

                            <%--<div class="panel panel-default">--%>
                                <%--<div class="panel-heading">--%>
                                    <%--<h4 class="panel-title">--%>
                                        <%--<a data-toggle="collapse" data-parent="#version" href="#v15">v1.5</a>--%>
                                    <%--</h4>--%>
                                <%--</div>--%>
                                <%--<div id="v15" class="panel-collapse collapse">--%>
                                    <%--<div class="panel-body">--%>
                                        <%--<ol>--%>
                                            <%--<li>增加了Bootstrap3表单构建器，表单设计更轻松； <a href="form_builder.html"   title="去看看"><i class="fa fa-eye"></i></a>--%>
                                            <%--</li>--%>
                                            <%--<li>修改了webim的高度；--%>
                                            <%--</li>--%>
                                            <%--<li>修复了因缺少jquery.min.map文件而导致页面加载进度条速度过慢的问题；--%>
                                            <%--</li>--%>
                                        <%--</ol>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                            <%--<div class="panel panel-default">--%>
                                <%--<div class="panel-heading">--%>
                                    <%--<h4 class="panel-title"><a data-toggle="collapse" data-parent="#version" href="#v14">v1.4</a>--%>
                                    <%--</h4>--%>
                                <%--</div>--%>
                                <%--<div id="v14" class="panel-collapse collapse">--%>
                                    <%--<div class="panel-body">--%>
                                        <%--<ol>--%>
                                            <%--<li>修复了百度ECharts图表显示不正确的问题； <a href="graph_echarts.html"   title="去看看"><i class="fa fa-eye"></i></a>--%>
                                            <%--</li>--%>
                                            <%--<li>新增表单验证示例，使用jQuery Validate插件实现； <a href="form_validate.html"   title="去看看"><i class="fa fa-eye"></i></a>--%>
                                            <%--</li>--%>
                                            <%--<li>新增树形视图示例； <a href="tree_view.html"   title="去看看"><i class="fa fa-eye"></i></a>--%>
                                            <%--</li>--%>
                                            <%--<li>修复弹框遮罩的Bug；--%>
                                            <%--</li>--%>
                                        <%--</ol>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                            <%--<div class="panel panel-default">--%>
                                <%--<div class="panel-heading">--%>
                                    <%--<h4 class="panel-title">--%>
                                        <%--<a data-toggle="collapse" data-parent="#version" href="#v13">v1.3</a>--%>
                                    <%--</h4>--%>
                                <%--</div>--%>
                                <%--<div id="v13" class="panel-collapse collapse">--%>
                                    <%--<div class="panel-body">--%>
                                        <%--<ol>--%>
                                            <%--<li>加入阿里巴巴团队的字体图标库，字体图标可以自定义啦； <a href="iconfont.html"   title="去看看"><i class="fa fa-eye"></i></a>--%>
                                            <%--</li>--%>
                                            <%--<li>新增头像裁剪上传组件FullAvatareditor； <a href="form_avatar.html"   title="去看看"><i class="fa fa-eye"></i></a>--%>
                                            <%--</li>--%>
                                            <%--<li>集成网页弹层插件layer； <a href="layer.html"   title="去看看"><i class="fa fa-eye"></i></a>--%>
                                            <%--</li>--%>
                                            <%--<li>集成日期选择器layerDate； <a href="layerdate.html"   title="去看看"><i class="fa fa-eye"></i></a>--%>
                                            <%--</li>--%>
                                            <%--<li class="text-danger"><b>增加web即时通讯功能，可以在系统内在线聊天了；</b> <a href="webim.html"   title="去看看"><i class="fa fa-eye"></i></a>--%>
                                            <%--</li>--%>
                                            <%--<li>增加主题预览功能，点击右上侧齿轮图标预览；</li>--%>
                                            <%--<li>增加左侧边栏固定功能；</li>--%>
                                            <%--<li>修复了多处问题。</li>--%>
                                        <%--</ol>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                            <%--<div class="panel panel-default">--%>
                                <%--<div class="panel-heading">--%>
                                    <%--<h4 class="panel-title">--%>
                                        <%--<a data-toggle="collapse" data-parent="#version" href="#v12">v1.2</a>--%>
                                    <%--</h4>--%>
                                <%--</div>--%>
                                <%--<div id="v12" class="panel-collapse collapse">--%>
                                    <%--<div class="panel-body">--%>
                                        <%--<ol>--%>
                                            <%--<li>新增百度WebUploader拖动上传文件组件；<a href="form_webuploader.html"   title="去看看"><i class="fa fa-eye"></i></a>--%>
                                            <%--</li>--%>
                                            <%--<li>新增国产优秀富文本编辑器插件Simditor；<a href="form_simditor.html"   title="去看看"><i class="fa fa-eye"></i></a>--%>
                                            <%--</li>--%>
                                            <%--<li>新增百度ECharts统计图表插件；<a href="form_simditor.html"   title="去看看"><i class="fa fa-eye"></i></a>--%>
                                            <%--</li>--%>
                                            <%--<li>修复了几处问题。</li>--%>
                                        <%--</ol>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                            <%--<div class="panel panel-default">--%>
                                <%--<div class="panel-heading">--%>
                                    <%--<h4 class="panel-title">--%>
                                        <%--<a data-toggle="collapse" data-parent="#version" href="#v11">v1.1</a>--%>
                                    <%--</h4>--%>
                                <%--</div>--%>
                                <%--<div id="v11" class="panel-collapse collapse">--%>
                                    <%--<div class="panel-body">--%>
                                        <%--<ol>--%>
                                            <%--<li>修复了几处问题。</li>--%>
                                        <%--</ol>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%----%>
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
        <div>今天是情人节，H+终于跨到了v3.0，就算是情人节礼物吧，感谢你们的不离不弃，一路相伴！</div>
        <div class="pull-right">——Beau-zihan / 2015.8.20</div>
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
                                <li>H+整体视觉效果；</li>
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