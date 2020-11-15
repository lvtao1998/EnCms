<?php /*a:2:{s:57:"E:\MyServer\www\test\application\admin\view\soft\add.html";i:1603077954;s:61:"E:\MyServer\www\test\application\admin\view\index_layout.html";i:1603845814;}*/ ?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>ENCMS后台管理系统</title>
    <meta name="author" content="ENCMS">
    <link rel="stylesheet" href="/public/static/libs/layui/css/layui.css">
    <link rel="stylesheet" href="/public/static/admin/css/admin.css?t=1590715655">
    <link rel="stylesheet" href="/public/static/common/font/iconfont.css">
    <script src="/public/static/libs/layui/layui.js"></script>
    <script src="/public/static/libs/jquery/jquery.min.js"></script>
    <script type="text/javascript">
    //全局变量
    var GV = {
        'image_upload_url': '<?php echo !empty($image_upload_url) ? htmlentities($image_upload_url) :  url("attachment/upload/upload", ["dir" => "images", "module" => request()->module()]); ?>',
        'file_upload_url': '<?php echo !empty($file_upload_url) ? htmlentities($file_upload_url) :  url("attachment/upload/upload", ["dir" => "files", "module" => request()->module()]); ?>',
        'jcrop_upload_url': '<?php echo !empty($jcrop_upload_url) ? htmlentities($jcrop_upload_url) :  url("attachment/Attachments/cropper"); ?>',
        'WebUploader_swf': '/public/static/libs/webuploader/Uploader.swf',
        'ueditor_upload_url': '<?php echo !empty($ueditor_upload_url) ? htmlentities($ueditor_upload_url) :  url("attachment/upload/upload", ["dir" => "images","from"=>"ueditor", "module" => request()->module()]); ?>',
        'ueditor_grabimg_url': '<?php echo !empty($ueditor_upload_url) ? htmlentities($ueditor_upload_url) :  url("attachment/Attachments/geturlfile"); ?>',
        'image_select_url': '<?php echo !empty($image_select_url) ? htmlentities($image_select_url) :  url("attachment/Attachments/select"); ?>',
        'filter_word_url': '<?php echo !empty($filter_word_url) ? htmlentities($filter_word_url) :  url("admin/ajax/filterWord"); ?>',
    };
    </script>
</head>

<body class="childrenBody">
    
<div class="layui-card">
  <div class="layui-card-header">软件信息添加</div>
    <div class="layui-card-body">
        <form class="layui-form" method="post" id="form1" enctype="multipart/form-data">
            <div class="layui-form-item">
                <label class="layui-form-label">栏目</label>
                <div class="layui-input-inline">
                    <select name="classid" lay-verify="required" lay-search="">
                      <option value="">请选择所属栏目</option>
                      <?php if(is_array($infoclass) || $infoclass instanceof \think\Collection || $infoclass instanceof \think\Paginator): $i = 0; $__LIST__ = $infoclass;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                      <option value="<?php echo htmlentities($vo['id']); ?>" <?php if($vo['infotype'] != 3): ?> disabled=""<?php endif; ?>><?php echo htmlentities($vo['classname']); ?></option>
                      <?php endforeach; endif; else: echo "" ;endif; ?>
                    </select>
                </div>
                <div class="layui-form-mid layui-word-aux">带<span style="color: red">*</span>号表示为必填项</div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">软件名称</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" lay-verify="required" name="title" placeholder="软件名称">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">属性</label>
                <div class="layui-input-inline">
                  <input type="checkbox" name="flag[]" lay-skin="primary" title="头条[h]" value="h">
                  <input type="checkbox" name="flag[]" lay-skin="primary" title="推荐[c]" value="c">
                  <input type="checkbox" name="flag[]" lay-skin="primary" title="特荐[a]" value="a">
                  <input type="checkbox" name="flag[]" lay-skin="primary" title="幻灯[f]" value="f">
                  <input type="checkbox" name="flag[]" lay-skin="primary" title="滚动[s]" value="s">
                  <input type="checkbox" name="flag[]" lay-skin="primary" title="跳转[j]" value="j">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">文件类型</label>
                <div class="layui-input-inline">
                  <select name="filetype" lay-verify="required" lay-search="">
                    <option value=".exe">.exe</option>
                    <option value=".zip">.zip</option>
                    <option value=".rar">.rar</option>
                    <option value=".iso">.iso</option>
                    <option value=".gz">.gz</option>
                    <option value="其它">其它</option>
                  </select>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">软件类型</label>
                <div class="layui-input-inline">
                  <select name="softtype" lay-verify="required" lay-search="">
                    <option value="国产软件">国产软件</option>
                    <option value="国外软件">国外软件</option>
                    <option value="汉化补丁">汉化补丁</option>
                  </select>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">界面语言</label>
                <div class="layui-input-inline">
                  <select name="language" lay-verify="required" lay-search="">
                    <option value="简体中文">简体中文</option>
                    <option value="英文软件">英文软件</option>
                    <option value="繁体中文">繁体中文</option>
                    <option value="其它类型">其它类型</option>
                  </select>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">授权方式</label>
                <div class="layui-input-inline">
                  <select name="accredit" lay-verify="required" lay-search="">
                    <option value="共享软件">共享软件</option>
                    <option value="免费软件">免费软件</option>
                    <option value="开源软件">开源软件</option>
                    <option value="商业软件">商业软件</option>
                    <option value="破解软件">破解软件</option>
                    <option value="游戏外挂">游戏外挂</option>
                  </select>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">软件大小</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" name="softsize" placeholder="软件大小">
                    <select name="unit">
                      <option value="MB">MB</option>
                      <option value="KB">KB</option>
                      <option value="GB">GB</option>
                    </select>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">运行环境</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" name="runos" placeholder="运行环境">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">官方网站</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" name="website" placeholder="官方网站">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">演示地址</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" name="demourl" placeholder="演示地址">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">下载地址</label>
                <div class="layui-input-inline">
                  <button type="button" class="layui-btn" id="test3"><i class="layui-icon"></i>上传文件</button>
                  <input type="hidden" name="dlurl" id="dlurl">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">文章来源</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" name="source" placeholder="文章来源">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">作者编辑</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" name="author" placeholder="作者编辑">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">跳转链接</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" name="linkurl" placeholder="跳转链接">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">关键词</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" name="keywords" placeholder="关键词">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">摘要</label>
                <div class="layui-input-inline">
                  <textarea class="layui-textarea" name="description" placeholder="摘要"></textarea>
                </div>
                <div class="layui-form-mid layui-word-aux">最多输入255字符</div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">内容</label>
                <div class="layui-input-inline">
                    <textarea class="layui-textarea" id="editor_id" name="content" placeholder="内容"></textarea>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">图片</label>
                <div class="layui-input-inline">
                    <button type="button" class="layui-btn" id="test1">上传图片</button>
                    <div class="layui-upload-list">
                        <input type="hidden" id="picurl">
                        <img class="layui-upload-img" style="width: 100px" id="demo1">
                        <p id="demoText"></p>
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">组图</label>
                <div class="layui-upload">
                  <button type="button" class="layui-btn" id="test2">多图片上传</button> 
                  <blockquote class="layui-elem-quote layui-quote-nm" style="margin-top: 10px;">
                    预览图：
                    <div class="layui-upload-list" id="demo2"></div>
                    <div class="layui-upload-list" id="demo3"></div>
                 </blockquote>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">点击次数</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" name="hits" placeholder="点击次数">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">排列排序</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" name="orderid" value="50" placeholder="排列排序">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">更新时间</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" name="posttime" value="<?php echo htmlentities($time); ?>" readonly="readonly" id="test5" placeholder="yyyy-MM-dd HH:mm:ss">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">审核</label>
                <div class="layui-input-inline">
                    <input type="radio" name="checkinfo" value="true" title="是">
                    <input type="radio" name="checkinfo" value="false" title="否">
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn" lay-submit="" lay-filter="formSubmit">立即提交</button>
                </div>
            </div>
        </form>
    </div>
</div>

    
    <script type="text/javascript">
    layui.config({
        version: '155714399890',
        base: '/public/static/libs/layui_exts/'
    }).extend({
        yzn: 'yzn/yzn',
        yznForm: 'yznForm/yznForm',
        yznTable: 'yznTable/yznTable',
        treeGrid: 'treeGrid/treeGrid',
        clipboard: 'clipboard/clipboard',
        notice: 'notice/notice',
        iconPicker: 'iconPicker/iconPicker',
        tableSelect: 'tableSelect/tableSelect',
        ztree: 'ztree/ztree',
        dragsort: 'dragsort/dragsort',
        tagsinput: 'tagsinput/tagsinput',
        xmSelect: 'xmSelect/xm-select',
        selectPage: 'selectPage/selectpage'
    }).use('yznForm');
    </script>
    
    
<script charset="utf-8" src="/public/static/kindeditor/kindeditor-all-min.js"></script>
<script charset="utf-8" src="/public/static/kindeditor/lang/zh-CN.js"></script>
<script>
  KindEditor.ready(function(K) {
    window.editor = K.create('#editor_id',{
      afterBlur: function () { this.sync(); }
    });
  });
</script>
<script>
layui.use('upload', function(){
  var $ = layui.jquery
  ,upload = layui.upload;
  
  //普通图片上传
  var uploadInst = upload.render({
    elem: '#test1'
    ,url: "<?php echo url('Upload/upload'); ?>" //改成您自己的上传接口
    ,accept:"images"
    ,acceptMime:"image/*"
    ,before: function(obj){
      //预读本地文件示例，不支持ie8
      obj.preview(function(index, file, result){
        $('#demo1').attr('src', result); //图片链接（base64）
      });
    }
    ,done: function(res){
      //如果上传失败
      if(res.code > 0){
        return layer.msg('上传失败');
      }
      //上传成功
      $("#picurl").attr('name','picurl');
      $("#picurl").attr('value',res['data']['src']);
    }
    ,error: function(){
      //演示失败状态，并实现重传
      var demoText = $('#demoText');
      demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
      demoText.find('.demo-reload').on('click', function(){
        uploadInst.upload();
      });
    }
  }); 
  //多图片上传
  upload.render({
    elem: '#test2'
    ,url: "<?php echo url('Upload/upload'); ?>" //改成您自己的上传接口
    ,accept:"images"
    ,acceptMime:"image/*"
    ,multiple: true
    ,before: function(obj){
      //预读本地文件示例，不支持ie8
      obj.preview(function(index, file, result){
        $('#demo2').append('<img src="'+ result +'" alt="'+ file.name +'" class="layui-upload-img" style="width:100px">')
      });
    }
    ,done: function(res){
      //上传完毕
      $('#demo3').append('<input type="hidden" name="picarr[]" value="'+res['data']['src']+'">')
    }
  }); 
  //指定允许上传的文件类型
  upload.render({
    elem: '#test3'
    ,url: "<?php echo url('Upload/upload'); ?>" //改成您自己的上传接口
    ,accept: 'file' //普通文件
    ,done: function(res){
      layer.msg('上传成功');
      $("#dlurl").attr('value',res['data']['src'])
    }
  }); 
});
</script>
<script>
layui.use('laydate', function(){
  var laydate = layui.laydate;
  //日期时间选择器
  laydate.render({
    elem: '#test5'
    ,type: 'datetime'
  });
});
</script>

</body>

</html>