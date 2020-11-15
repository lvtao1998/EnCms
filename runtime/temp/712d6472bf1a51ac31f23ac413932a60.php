<?php /*a:2:{s:58:"E:\MyServer\www\test\application\admin\view\soft\edit.html";i:1605099628;s:61:"E:\MyServer\www\test\application\admin\view\index_layout.html";i:1603845814;}*/ ?>
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
  <div class="layui-card-header">软件信息修改</div>
    <div class="layui-card-body">
        <form class="layui-form" method="post" id="form1" enctype="multipart/form-data">
            <div class="layui-form-item">
                <label class="layui-form-label">栏目</label>
                <div class="layui-input-inline">
                    <select name="classid" lay-verify="required" lay-search="">
                      <option value="">请选择所属栏目</option>
                      <?php if(is_array($infoclass) || $infoclass instanceof \think\Collection || $infoclass instanceof \think\Paginator): $i = 0; $__LIST__ = $infoclass;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                      <option value="<?php echo htmlentities($vo['id']); ?>" <?php if($vo['infotype'] != 3): ?> disabled=""<?php endif; if($edit['classid'] == $vo['id']): ?> selected="" <?php endif; ?>><?php echo htmlentities($vo['classname']); ?></option>
                      <?php endforeach; endif; else: echo "" ;endif; ?>
                    </select>
                </div>
                <div class="layui-form-mid layui-word-aux">带<span style="color: red">*</span>号表示为必填项</div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">软件名称</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" lay-verify="required" name="title" value="<?php echo htmlentities($edit['title']); ?>" placeholder="软件名称">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">属性</label>
                <div class="layui-input-inline">
                  <input type="checkbox" name="flag[]" lay-skin="primary" title="头条[h]" value="h" <?php if(in_array('h',$edit['flag'])): ?> checked=""<?php endif; ?>>
                  <input type="checkbox" name="flag[]" lay-skin="primary" title="推荐[c]" value="c" <?php if(in_array('c',$edit['flag'])): ?> checked=""<?php endif; ?>>
                  <input type="checkbox" name="flag[]" lay-skin="primary" title="特荐[a]" value="a" <?php if(in_array('a',$edit['flag'])): ?> checked=""<?php endif; ?>>
                  <input type="checkbox" name="flag[]" lay-skin="primary" title="幻灯[f]" value="f" <?php if(in_array('f',$edit['flag'])): ?> checked=""<?php endif; ?>>
                  <input type="checkbox" name="flag[]" lay-skin="primary" title="滚动[s]" value="s" <?php if(in_array('s',$edit['flag'])): ?> checked=""<?php endif; ?>>
                  <input type="checkbox" name="flag[]" lay-skin="primary" title="跳转[j]" value="j" <?php if(in_array('j',$edit['flag'])): ?> checked=""<?php endif; ?>>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">文件类型</label>
                <div class="layui-input-inline">
                    <select name="filetype" lay-verify="required" lay-search="">
                    <option value=".exe"<?php if($edit['filetype'] == '.exe'): ?> selected=""<?php endif; ?>>.exe</option>
                    <option value=".zip"<?php if($edit['filetype'] == '.zip'): ?> selected=""<?php endif; ?>>.zip</option>
                    <option value=".rar"<?php if($edit['filetype'] == '.rar'): ?> selected=""<?php endif; ?>>.rar</option>
                    <option value=".iso"<?php if($edit['filetype'] == '.iso'): ?> selected=""<?php endif; ?>>.iso</option>
                    <option value=".gz"<?php if($edit['filetype'] == '.gz'): ?> selected=""<?php endif; ?>>.gz</option>
                    <option value="其它"<?php if($edit['filetype'] == '其它'): ?> selected=""<?php endif; ?>>其它</option>
                  </select>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">软件类型</label>
                <div class="layui-input-inline">
                  <select name="softtype" lay-verify="required" lay-search="">
                    <option value="国产软件"<?php if($edit['softtype'] == '国产软件'): ?> selected=""<?php endif; ?>>国产软件</option>
                    <option value="国外软件"<?php if($edit['softtype'] == '国外软件'): ?> selected=""<?php endif; ?>>国外软件</option>
                    <option value="汉化补丁"<?php if($edit['softtype'] == '汉化补丁'): ?> selected=""<?php endif; ?>>汉化补丁</option>
                  </select>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">界面语言</label>
                <div class="layui-input-inline">
                  <select name="language" lay-verify="required" lay-search="">
                    <option value="简体中文"<?php if($edit['language'] == '简体中文'): ?> selected=""<?php endif; ?>>简体中文</option>
                    <option value="英文软件"<?php if($edit['language'] == '英文软件'): ?> selected=""<?php endif; ?>>英文软件</option>
                    <option value="繁体中文"<?php if($edit['language'] == '繁体中文'): ?> selected=""<?php endif; ?>>繁体中文</option>
                    <option value="其它类型"<?php if($edit['language'] == '其它类型'): ?> selected=""<?php endif; ?>>其它类型</option>
                  </select>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">授权方式</label>
                <div class="layui-input-inline">
                  <select name="accredit" lay-verify="required" lay-search="">
                    <option value="共享软件"<?php if($edit['accredit'] == '共享软件'): ?> selected=""<?php endif; ?>>共享软件</option>
                    <option value="免费软件"<?php if($edit['accredit'] == '免费软件'): ?> selected=""<?php endif; ?>>免费软件</option>
                    <option value="开源软件"<?php if($edit['accredit'] == '开源软件'): ?> selected=""<?php endif; ?>>开源软件</option>
                    <option value="商业软件"<?php if($edit['accredit'] == '商业软件'): ?> selected=""<?php endif; ?>>商业软件</option>
                    <option value="破解软件"<?php if($edit['accredit'] == '破解软件'): ?> selected=""<?php endif; ?>>破解软件</option>
                    <option value="游戏外挂"<?php if($edit['accredit'] == '游戏外挂'): ?> selected=""<?php endif; ?>>游戏外挂</option>
                  </select>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">软件大小</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" name="softsize" placeholder="软件大小">
                    <select name="unit">
                      <option value="MB"<?php if($edit['unit'] == 'MB'): ?> selected=""<?php endif; ?>>MB</option>
                      <option value="KB"<?php if($edit['unit'] == 'KB'): ?> selected=""<?php endif; ?>>KB</option>
                      <option value="GB"<?php if($edit['unit'] == 'GB'): ?> selected=""<?php endif; ?>>GB</option>
                    </select>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">运行环境</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" name="runos" value="<?php echo htmlentities($edit['runos']); ?>" placeholder="运行环境">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">官方网站</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" name="website" value="<?php echo htmlentities($edit['website']); ?>" placeholder="官方网站">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">演示地址</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" name="demourl" value="<?php echo htmlentities($edit['demourl']); ?>" placeholder="演示地址">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">下载地址</label>
                <div class="layui-input-inline">
                  <button type="button" class="layui-btn" id="test3"><i class="layui-icon"></i>上传文件</button>
                  <input type="hidden" name="dlurl" id="dlurl" value="<?php echo htmlentities($edit['dlurl']); ?>">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">文章来源</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" name="source" value="<?php echo htmlentities($edit['source']); ?>" placeholder="文章来源">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">作者编辑</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" name="author" value="<?php echo htmlentities($edit['author']); ?>" placeholder="作者编辑">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">跳转链接</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" name="linkurl" value="<?php echo htmlentities($edit['linkurl']); ?>" placeholder="跳转链接">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">关键词</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" name="keywords" value="<?php echo htmlentities($edit['keywords']); ?>" placeholder="关键词">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">摘要</label>
                <div class="layui-input-inline">
                  <textarea class="layui-textarea" name="description" placeholder="摘要"><?php echo htmlentities($edit['description']); ?></textarea>
                </div>
                <div class="layui-form-mid layui-word-aux">最多输入255字符</div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">内容</label>
                <div class="layui-input-inline">
                    <textarea class="layui-textarea" id="editor_id" name="content" placeholder="内容"><?php echo htmlentities($edit['content']); ?></textarea>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">宽度</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" name="widths" value="<?php echo htmlentities($edit['widths']); ?>" id="widths" placeholder="宽度">
                </div>
                <div class="layui-form-mid layui-word-aux">px</div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">高度</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" name="heights" value="<?php echo htmlentities($edit['heights']); ?>" id="heights" placeholder="高度">
                </div>
                <div class="layui-form-mid layui-word-aux">px</div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">图片</label>
                <div class="layui-input-inline">
                    <button type="button" class="layui-btn" id="test1">上传图片</button>
                    <div class="layui-upload-list">
                        <input type="hidden" id="picurl">
                        <img class="layui-upload-img" style="width: 100px" id="demo1" src="<?php echo htmlentities($edit['picurl']); ?>">
                        <p id="demoText"></p>
                    </div>
                    <div id="bs"></div>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">组图</label>
                <div class="layui-upload">
                  <button type="button" class="layui-btn" id="test2">多图片上传</button> 
                  <blockquote class="layui-elem-quote layui-quote-nm" style="margin-top: 10px;">
                    预览图：
                    <div class="layui-upload-list" id="demo2"><?php if($edit['picarr']): if(is_array($edit['picarr']) || $edit['picarr'] instanceof \think\Collection || $edit['picarr'] instanceof \think\Paginator): $i = 0; $__LIST__ = $edit['picarr'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><img src="<?php echo htmlentities($vo); ?>" class="layui-upload-img" style="width:100px"><?php endforeach; endif; else: echo "" ;endif; ?><?php endif; ?></div>
                    <div class="layui-upload-list" id="demo3"></div>
                 </blockquote>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">点击次数</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" name="hits" value="<?php echo htmlentities($edit['hits']); ?>" placeholder="点击次数">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">排列排序</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" value="<?php echo htmlentities($edit['orderid']); ?>" name="orderid" value="50" placeholder="排列排序">
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
                    <input type="radio" name="checkinfo" value="true" title="是" <?php if($edit['checkinfo'] == 'true'): ?>checked=""<?php endif; ?>>
                    <input type="radio" name="checkinfo" value="false" title="否" <?php if($edit['checkinfo'] == 'false'): ?>checked=""<?php endif; ?>>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <input type="hidden" name="id" value="<?php echo htmlentities($edit['id']); ?>">
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
      layer.load(); //上传loading
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
      $("#bs").html("");
      $("#bs").append('<button type="button" onclick="delImg()" class="layui-btn layui-btn-normal layui-btn-sm"><i class="layui-icon"></i></button>');
      layer.closeAll('loading'); //关闭loading
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
    ,data:{
      width: function(){
        return $('#widths').val();
      },
      height: function(){
        return $('#heights').val();
      },
    }
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
});
function delImg(){
  layer.load(); //上传loading
  var picurl = $("#picurl").val();
  $.ajax({
    url:"<?php echo url('Upload/delImg'); ?>",
    type:"post",
    data:{picurl:picurl},
    success(e){
      if(e.code>0){
          $('#demo1').attr("src","")
          $("#picurl").attr("value","404")
          $("#bs").html("")
          layer.closeAll('loading'); //关闭loading
          layer.msg(e.msg);
        }else{
          layer.closeAll('loading'); //关闭loading
          layer.msg(e.msg);
        }
    }
  })
}  
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
<script>
$(function(){
  var desc = $("#demo1").attr("src");
  if(desc){
    $("#bs").append('<button type="button" onclick="delImgs()" class="layui-btn layui-btn-normal layui-btn-sm"><i class="layui-icon"></i></button>');
  }
})
function delImgs(){
  var desc = $("#demo1").attr("src");
  layer.load(); //上传loading
  $.ajax({
    url:"<?php echo url('Upload/delImg'); ?>",
    type:"post",
    data:{picurl:desc},
    success(e){
      if(e.code>0){
          $('#demo1').attr("src","")
          $("#picurl").attr("value","404")
          $("#bs").html("")
          layer.closeAll('loading'); //关闭loading
          layer.msg(e.msg);
        }else{
          layer.closeAll('loading'); //关闭loading
          layer.msg(e.msg);
        }
    }
  })
}  
</script>

</body>

</html>