<?php
namespace app\common\taglib;
use think\template\TagLib;
/**
 * 
 */
class Cms extends TagLib
{
	protected $tags = [
		// 列表
		'ls' => ['attr'=>'db,classid,limit,order,checkinfo,id,key,page','close'=>1],
		// 友情链接
		'lk' => ['attr'=>'limit,order,checkinfo,id,key','close'=>1],
		// 单页
		'info' => ['attr'=>'db,id,classid,field','close'=>0],
		//栏目
		'lm' => ['attr'=>'db,zid,pid,limit,checkinfo,id,key,page','close'=>1],
	];
	public function tagLm($tag,$content){
		$db = isset($tag['db']) ? $tag['db'] : '';
		$zid = isset($tag['zid']) ? $tag['zid'] : '';
		$pid = isset($tag['pid']) ? $tag['pid'] : '';
		$checkinfo = isset($tag['checkinfo']) ? $tag['checkinfo'] : '';
		$limit = isset($tag['limit']) ? $tag['limit'] : 100000000;
		$key = isset($tag['key']) ? $tag['key'] : 'i';
		$vid = isset($tag['id']) ? $tag['id'] : 'v';
		$page = isset($tag['page']) ? $tag['page'] : '1';
		$str = '<?php ';
		$str .= '$list = db("'.$db.'")->page('.$page.')->limit('.$limit.')';
		if($checkinfo){
			$str .= '->where("checkinfo","'.$checkinfo.'")';
		}
		if($zid){
			$str .= '->where("id",'.$zid.')';
		}
		if($pid){
			$str .= '->where("parentid",'.$pid.')';
		}
		$str .= '->select();';
		$str .= 'foreach($list as $'.$key.' => $'.$vid.') :?>';
		$str .= $content;
		$str .= '<?php endforeach; ?>';
		return $str;
	}

	public function tagLs($tag,$content)
	{
		$db = isset($tag['db']) ? $tag['db'] : '';
		$classid = isset($tag['classid']) ? $tag['classid'] : '';
		$limit = isset($tag['limit']) ? $tag['limit'] : 100000000;
		$order = isset($tag['order']) ? $tag['order'] : 'id desc';
		$key = isset($tag['key']) ? $tag['key'] : 'i';
		$checkinfo = isset($tag['checkinfo']) ? $tag['checkinfo'] : '';
		$vid = isset($tag['id']) ? $tag['id'] : 'v';
		$page = isset($tag['page']) ? $tag['page'] : 1;
		$str = '<?php ';
		$str .= '$list = db("'.$db.'")->page('.$page.')->limit('.$limit.')->order("'.$order.'")';
		if($classid){
			$str .= '->where("classid","'.$classid.'")';
		}
		if($checkinfo){
			$str .= '->where("checkinfo","'.$checkinfo.'")';
		}
		$str .= '->select();';
		$str .= 'foreach($list as $'.$key.' => $'.$vid.') :?>';
		$str .= $content;
		$str .= '<?php endforeach; ?>';
		return $str;
	}
	public function tagLk($tag,$content)
	{
		$limit = isset($tag['limit']) ? $tag['limit'] : '';
		$order = isset($tag['order']) ? $tag['order'] : '';
		$checkinfo = isset($tag['checkinfo']) ? $tag['checkinfo'] : '';
		$vid = isset($tag['id']) ? $tag['id'] : 'v';
		$key = isset($tag['key']) ? $tag['key'] : 'i';
		$str = '<?php ';
		$str .= '$list = db("weblink")';
		if($order){
			$str .= '->order("'.$order.'")';
		}
		if($limit){
			$str .= '->limit('.$limit.')';
		}
		if($checkinfo){
			$str .= '->where("checkinfo","'.$checkinfo.'")';
		}
		$str .= '->select();';
		$str .= 'foreach($list as $'.$key.' => $'.$vid.') :?>';
		$str .= $content;
		$str .= '<?php endforeach; ?>';
		return $str;
	}
	public function tagInfo($tag,$content)
	{
		$db = isset($tag['db']) ? $tag['db'] : 'info';
		$id = isset($tag['id']) ? $tag['id'] : '';
		$classid = isset($tag['classid']) ? $tag['classid'] : '';
		$field = isset($tag['field']) ? $tag['field'] : '';
		if($classid){
			$res = db("$db")->where('classid',$classid)->find();
		}
		if($id){
			$res = db("$db")->where('id',$id)->find();
		}
		return $res[''.$field.''];
	}
}
?>