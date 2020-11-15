<?php
namespace app\admin\validate;
use think\Validate;
/**
 * 
 */
class Infolist extends Validate
{
	//定义验证规则
    protected $rule = [
        'classid' => 'require',
        'title' => 'require|max:80',
    ];
    protected $message  =   [
        'classid.require'      => '栏目不能为空！',
        'title.require'      => '文章标题不能为空！',  
        'title.max' 		=> '文章标题不能大于80个字符！',
    ];
}
?>