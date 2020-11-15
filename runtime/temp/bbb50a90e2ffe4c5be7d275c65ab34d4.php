<?php /*a:2:{s:62:"E:\MyServer\www\test\application\admin\view\infoimg\index.html";i:1603335745;s:61:"E:\MyServer\www\test\application\admin\view\index_layout.html";i:1603845814;}*/ ?>
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
    <div class="layui-card-header">图片信息管理</div>
    <div class="layui-card-body">
        <div class="layui-form">
            <table class="layui-hide" id="currentTable" lay-filter="currentTable"></table>
            <script type="text/html" id="barTool">
                <a data-open='<?php echo url("edit"); ?>?id={{ d.id }}' class="layui-btn layui-btn-xs">编辑</a>
                <a href='<?php echo url("del"); ?>?id={{ d.id }}' class="layui-btn layui-btn-danger layui-btn-xs layui-tr-del">删除</a>
            </script>
            <script type="text/html" id="classidn">
                {{d.classname}}[{{d.classid}}]
            </script>
            <script type="text/html" id="image">
                <img src="{{d.picurl}}" data-id="{{d.id}}" data-src="{{d.picurl}}" id="withExport">
            </script>
            <script type="text/html" id="switchTpl">
                <input type="checkbox" name="checkinfo" value="{{d.id}}" lay-skin="switch" lay-text="显示|隐藏" lay-filter="switchCheckinfo" {{ d.checkinfo=="true" ? 'checked' : '' }}>
            </script>
            <script type="text/html" id="flag">
                <span style="color: red">{{d.flag}}</span>
            </script>
        </div>
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
    
    
<script type="text/javascript">
layui.use('yznTable', function() {
    var table = layui.yznTable
        ,form = layui.form;

    var init = {
        table_elem: '#currentTable',
        add_url: '<?php echo url("add"); ?>',
    };

    table.render({
        init: init,
        id: 'currentTable',
        toolbar: ['refresh','add'],
        url: '<?php echo url("index"); ?>',
        cols: [
            [
                { field: 'id', width: 80, title: 'ID'},
                { field: 'title',  title: '标题'},
                { field: 'flag',  title: '属性',toolbar: '#flag',search:false,},
                { field: 'classid',  title: ' 栏目',toolbar: '#classidn',search: false,},
                { field: 'posttime', title: '更新时间', search: false,},
                { field: 'author',  title: '发布人',search: false,},
                { field: 'hits', title: '点击' ,search: false,},
                { field: 'picurl', toolbar: '#image', title: '缩略图',search:false},
                { field: 'checkinfo', align: 'center', width: 120, title: '状态', templet: '#switchTpl', unresize: true ,search: false,},
                { fixed: 'right', width: 160, title: '操作', toolbar: '#barTool' }
            ]
        ],
        page: {}
    });
    //监听审核操作
    form.on('switch(switchCheckinfo)', function(obj){
        var id = this.value,
            value = obj.elem.checked;
        $.post('<?php echo url("multi"); ?>', {'id':id,'checkinfo': value}, function(data) {
             if (data.code == 1) {
                 layer.msg(data.msg);
             } else {
                 layer.msg(data.msg);
             }
         })
    });
});
$(document).on('click',"#withExport",function(){
    var id = $(this).attr("data-id")
    var src = $(this).attr("data-src")
    $.getJSON('<?php echo url("Upload/aimgage"); ?>?id='+id+'&src='+src, function(json){
      layer.photos({
        photos: json //格式见API文档手册页
        ,anim: 5 //0-6的选择，指定弹出图片动画类型，默认随机
      });
    });
});
</script>

</body>

</html>