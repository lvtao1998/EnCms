<?php /*a:1:{s:60:"E:\MyServer\www\test\application\admin\view\index\login.html";i:1603523162;}*/ ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <title>登录</title>
    <link rel="stylesheet" type="text/css" href="/public/static/libs/layui/css/layui.css" />
    <link rel="stylesheet" type="text/css" href="/public/static/admin/css/style.css?t=1590725734" />
<script language="JavaScript">
<!--
	if(top!=self)
	if(self!=top) top.location=self.location;
//-->
</script>
</head>

<body>
<form class="layui-form" action="<?php echo url('admin/index/login'); ?>">
    <div class="container">
        <div class="layui-form-mid layui-word-aux">
            <img id="logoid" src="/public/static/admin/img/login.gif" height="35">                  
        </div>
      <div class="layui-form-item">
        <label class="layui-form-label">用户名</label>
        <div class="layui-input-block">
            <input type="text" name="username" lay-verify="required" autocomplete="off" placeholder="账号" class="layui-input">
        </div>
      </div>
      <div class="layui-form-item">
        <label class="layui-form-label">密 &nbsp;&nbsp;码</label>
        <div class="layui-input-inline">
            <input type="password" name="password" lay-verify="required" autocomplete="off" placeholder="密码" class="layui-input">
            <i></i>
        </div>
        <!-- <div class="layui-form-mid layui-word-aux">辅助文字</div> -->
      </div>
       <div class="layui-form-item">
        <label class="layui-form-label">验证码</label>
        <div class="layui-input-inline">
            <input type="text" name="verify" lay-verify="required" placeholder="验证码" autocomplete="off" class="layui-input">
            <img id="verify" src="<?php echo captcha_src(); ?>" alt="验证码" class="captcha">
        </div>
      </div>
      <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn layui-btn-normal" lay-filter="login" lay-submit>登录</button>    
        </div>
      </div>
    </div>
</form>
    <script type="text/javascript" src="/public/static/libs/layui/layui.js"></script>
    <script type="text/javascript">
    layui.use(['form', 'layer', 'jquery'], function() {
        var form = layui.form,
            layer = layui.layer,
            $ = layui.jquery;
        //登录
        form.on("submit(login)", function(data) {
            var action = $(data.form).attr('action');
            $.post(action, $(data.form).serialize(), success, "json");
            return false;

            function success(data) {
                if (data.code) {
                    layer.msg('登入成功', {
                        offset: '15px',
                        icon: 1,
                        time: 1000
                    }, function() {
                        window.location.href = data.url;
                    });
                } else {
                    layer.msg(data.msg, { icon: 5 });
                    //刷新验证码
                    $("#verify").click();
                }
            }
        });

        //刷新验证码
        $("#verify").click(function() {
            var verifyimg = $("#verify").attr("src");
            $("#verify").attr("src", verifyimg.replace(/\?.*$/, '') + '?' + Math.random());
        });
    })
    </script>
</body>

</html>