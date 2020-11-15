<?php
namespace app\admin\validate;
use think\Validate;
/**
 * 
 */
class Infoclass extends Validate
{
	//定义验证规则
    protected $rule = [
        'infotype' => 'require',
        'parentid' => 'require',
        'classname'=> 'require|max:30|unique:infoclass',
    ];
    protected $message  =   [
        'infotype.require'      => '栏目类型不能为空！',
        'parentid.require'      => '所属栏目不能为空！',
        'classname.require'     => '栏目名称不能为空！',  
        'classname.unique'     => '栏目名称不能重复！', 
        'classname.max' 		=> '栏目名称不能大于30个字符！',
    ];
}
?>