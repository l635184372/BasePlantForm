<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/2/21
  Time: 15:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/include/taglib.jsp"%>
<html><!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>后台主题UI框架 - 注册</title>
    <meta name="keywords" content="后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link href="${ctxStatic}/plantform/css/bootstrap.min.css"   rel="stylesheet">
    <link href="${ctxStatic}/plantform/css/font-awesome.min.css"   rel="stylesheet">
    <link href="${ctxStatic}/plantform/css/plugins/iCheck/custom.css"   rel="stylesheet">
    <link href="${ctxStatic}/plantform/css/animate.min.css"   rel="stylesheet">
    <link href="${ctxStatic}/plantform/css/style.min.css"   rel="stylesheet">
    <script>if(window.top !== window.self){ window.top.location = window.location;}</script>

</head>

<body class="gray-bg">

<div class="middle-box text-center loginscreen   animated fadeInDown">
    <div>
        <div>

            <h1 class="logo-name">C#</h1>

        </div>
        <h3>欢迎注册 XX</h3>
        <p>创建一个XX新账户</p>
            <form class="form-horizontal m-t" id="signupForm" method="post" action="${ctxSys}/register">
                <div class="form-group">
                    <input id="userName" name="userName" class="form-control" type="text" aria-required="true" aria-invalid="true" class="error" placeholder="请输入用户名" onblur="checkName(this.value);">
                </div>
                <div class="form-group">
                    <input id="passWord" name="passWord" class="form-control" type="password" placeholder="请输入密码" >
                </div>
                <div class="form-group">
                    <input id="confirm_passWord" name="confirm_passWord" class="form-control" type="password" placeholder="请再次输入密码">
                    <%--<span class="help-block m-b-none"><i class="fa fa-info-circle"></i> 请再次输入您的密码</span>--%>
                </div>
                <div class="form-group text-left">
                    <div class="checkbox i-checks">
                        <label class="no-padding">
                            <input type="checkbox" class="checkbox" id="agree" name="agree"> 我已经认真阅读并同意《H+使用协议》
                        </label>
                    </div>
                </div>
                <div class="form-group">
                        <button class="btn btn-primary block full-width m-b" type="submit">提交</button>
                </div>
            </form>
    </div>
</div>

<!-- 全局js -->
<script src="${ctxStatic}/plantform/js/jquery-2.1.1.min.js"  ></script>
<script src="${ctxStatic}/plantform/js/bootstrap.min.js"  ></script>
<!-- iCheck -->
<script src="${ctxStatic}/plantform/js/plugins/iCheck/icheck.min.js"  ></script>
<script src="${ctxStatic}/plantform/js/plugins/validate/jquery.validate.min.js"  ></script>
<script src="${ctxStatic}/plantform/js/plugins/validate/messages_zh.min.js"  ></script>
<script src="${ctxStatic}/plantform/js/plugins/layer/layer.min.js"  ></script>
<script>
    $(document).ready(function () {
        $('.i-checks').iCheck({
            checkboxClass: 'icheckbox_square-green',
            radioClass: 'iradio_square-green',
        });
    });
    $.validator.setDefaults({highlight:function(a){$(a).closest(".form-group").removeClass("has-success").addClass("has-error")},success:function(a){a.closest(".form-group").removeClass("has-error").addClass("has-success")},errorElement:"span",errorPlacement:function(a,b){if(b.is(":radio")||b.is(":checkbox")){a.appendTo(b.parent().parent().parent())}else{a.appendTo(b.parent())}},errorClass:"help-block m-b-none",validClass:"help-block m-b-none"});$().ready(function(){$("#commentForm").validate();var a="<i class='fa fa-times-circle'></i> ";$("#signupForm").validate({rules:{firstname:"required",lastname:"required",userName:{required:true,minlength:2},passWord:{required:true,minlength:5},confirm_passWord:{required:true,minlength:5,equalTo:"#passWord"},email:{required:true,email:true},topic:{required:"#newsletter:checked",minlength:2},agree:"required"},messages:{firstname:a+"请输入你的姓",lastname:a+"请输入您的名字",userName:{required:a+"请输入您的用户名",minlength:a+"用户名必须两个字符以上"},passWord:{required:a+"请输入您的密码",minlength:a+"密码必须5个字符以上"},confirm_passWord:{required:a+"请再次输入密码",minlength:a+"密码必须5个字符以上",equalTo:a+"两次输入的密码不一致"},email:a+"请输入您的E-mail",agree:{required:a+"必须同意协议后才能注册",element:"#agree-error"}}});$("#userName").focus(function(){var c=$("#firstname").val();var b=$("#lastname").val();if(c&&b&&!this.value){this.value=c+"."+b}})});
    function checkName(userName){
        $.ajax({url:"${ctxSys}/checkUserName",data:{userName:userName},success:function(data){
            if(data == 1){
                //表示用户名存在重复，提示用户从新输入
                parent.layer.alert('该用户名已存在，请重新输入！', {
                    icon: 2,
                    skin: 'layer-ext-moon' //该皮肤由layer.seaning.com友情扩展。关于皮肤的扩展规则，<a target="_balnk" style="color:#00B2E2;" href="javascript:if(confirm('http://layer.layui.com/skin.html  \n\nlδ Teleport Pro  ·’~okΧ  \n\nΘ'))window.location='http://layer.layui.com/skin.html#publish'"  >去这里查阅</a>
                })
            }
        }});
    }
</script>



</body>

</html>
