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
		if($zid){
			if($checkinfo){
				$str .= '$list = db("'.$db.'")->where("id",'.$zid.')->where("checkinfo","'.$checkinfo.'")->page('.$page.')->limit('.$limit.')->select();';
			}else{
				$str .= '$list = db("'.$db.'")->where("id",'.$zid.')->page('.$page.')->limit('.$limit.')->select();';
			}	
		}
		if($pid){
			if($checkinfo){
				$str .= '$list = db("'.$db.'")->where("parentid",'.$pid.')->page('.$page.')->where("checkinfo","'.$checkinfo.'")->limit('.$limit.')->select();';
			}else{
				$str .= '$list = db("'.$db.'")->where("parentid",'.$pid.')->page('.$page.')->limit('.$limit.')->select();';
			}	
		}
		$str .= 'foreach($list as $'.$key.' => $'.$vid.') :?>';
		$str .= $content;
		$str .= '<?php endforeach; ?>';
		return $str;
	}

	public function tagLs($tag,$content)
	{
		$db = isset($tag['db']) ? $tag['db'] : '';
		$classid = isset($tag['classid']) ? $tag['classid'] : '';
		$limit = isset($tag['limit']) ? $tag['limit'] : '';
		$order = isset($tag['order']) ? $tag['order'] : '';
		$key = isset($tag['key']) ? $tag['key'] : 'i';
		$checkinfo = isset($tag['checkinfo']) ? $tag['checkinfo'] : '';
		$vid = isset($tag['id']) ? $tag['id'] : 'v';
		$page = isset($tag['page']) ? $tag['page'] : '1';
		$str = '<?php ';
		if($page)
		{
			if($classid)
			{
				if($checkinfo)
				{
					if($limit)
					{
						if($order)
						{
							$str .= '$list = db("'.$db.'")->where("classid",'.$classid.')->where("checkinfo","'.$checkinfo.'")->page('.$page.')->limit('.$limit.')->order("'.$order.'")->select();';
						}
						else
						{
							$str .= '$list = db("'.$db.'")->where("classid",'.$classid.')->where("checkinfo","'.$checkinfo.'")->page('.$page.')->limit('.$limit.')->select();';
						}
					}
					else
					{
						if($order)
						{
							$str .= '$list = db("'.$db.'")->where("classid",'.$classid.')->where("checkinfo","'.$checkinfo.'")->page('.$page.')->order("'.$order.'")->select();';
						}
						else
						{
							$str .= '$list = db("'.$db.'")->where("classid",'.$classid.')->where("checkinfo","'.$checkinfo.'")->page('.$page.')->select();';
						}
					}
				}
				else
				{
					if($limit)
					{
						if($order)
						{
							$str .= '$list = db("'.$db.'")->where("classid",'.$classid.')->limit('.$limit.')->order("'.$order.'")->page('.$page.')->select();';
						}
						else
						{
							$str .= '$list = db("'.$db.'")->where("classid",'.$classid.')->limit('.$limit.')->page('.$page.')->select();';
						}
					}
					else
					{
						if($order)
						{
							$str .= '$list = db("'.$db.'")->where("classid",'.$classid.')->order("'.$order.'")->page('.$page.')->select();';
						}
						else
						{
							$str .= '$list = db("'.$db.'")->where("classid",'.$classid.')->page('.$page.')->select();';
						}
					}
				}
			}
			else
			{
				if($checkinfo)
				{
					if($limit)
					{
						if($order)
						{
							$str .= '$list = db("'.$db.'")->where("checkinfo","'.$checkinfo.'")->page('.$page.')->limit('.$limit.')->order("'.$order.'")->select();';
						}
						else
						{
							$str .= '$list = db("'.$db.'")->where("checkinfo","'.$checkinfo.'")->page('.$page.')->limit('.$limit.')->select();';
						}
					}
					else
					{
						if($order)
						{
							$str .= '$list = db("'.$db.'")->where("checkinfo","'.$checkinfo.'")->page('.$page.')->order("'.$order.'")->select();';
						}
						else
						{
							$str .= '$list = db("'.$db.'")->where("checkinfo","'.$checkinfo.'")->page('.$page.')->select();';
						}
					}
				}
				else
				{
					if($limit)
					{
						if($order)
						{
							$str .= '$list = db("'.$db.'")->limit('.$limit.')->order("'.$order.'")->page('.$page.')->select();';
						}
						else
						{
							$str .= '$list = db("'.$db.'")->limit('.$limit.')->page('.$page.')->select();';
						}
					}
					else
					{
						if($order)
						{
							$str .= '$list = db("'.$db.'")->page('.$page.')->order("'.$order.'")->select();';
						}
						else
						{
							$str .= '$list = db("'.$db.'")->page('.$page.')->select();';
						}
					}
				}
			}
		}
		else
		{
			if($classid)
			{
				if($checkinfo)
				{
					if($limit)
					{
						if($order)
						{
							$str .= '$list = db("'.$db.'")->where("classid",'.$classid.')->where("checkinfo","'.$checkinfo.'")->limit('.$limit.')->order("'.$order.'")->select();';
						}
						else
						{
							$str .= '$list = db("'.$db.'")->where("classid",'.$classid.')->where("checkinfo","'.$checkinfo.'")->limit('.$limit.')->select();';
						}
					}
					else
					{
						if($order)
						{
							$str .= '$list = db("'.$db.'")->where("classid",'.$classid.')->where("checkinfo","'.$checkinfo.'")->order("'.$order.'")->select();';
						}
						else
						{
							$str .= '$list = db("'.$db.'")->where("classid",'.$classid.')->where("checkinfo","'.$checkinfo.'")->select();';
						}
					}
				}
				else
				{
					if($limit)
					{
						if($order)
						{
							$str .= '$list = db("'.$db.'")->where("classid",'.$classid.')->limit('.$limit.')->order("'.$order.'")->select();';
						}
						else
						{
							$str .= '$list = db("'.$db.'")->where("classid",'.$classid.')->limit('.$limit.')->select();';
						}
					}
					else
					{
						if($order)
						{
							$str .= '$list = db("'.$db.'")->where("classid",'.$classid.')->order("'.$order.'")->select();';
						}
						else
						{
							$str .= '$list = db("'.$db.'")->where("classid",'.$classid.')->select();';
						}
					}
				}
			}
			else
			{
				if($checkinfo)
				{
					if($limit)
					{
						if($order)
						{
							$str .= '$list = db("'.$db.'")->where("checkinfo","'.$checkinfo.'")->limit('.$limit.')->order("'.$order.'")->select();';
						}
						else
						{
							$str .= '$list = db("'.$db.'")->where("checkinfo","'.$checkinfo.'")->limit('.$limit.')->select();';
						}
					}
					else
					{
						if($order)
						{
							$str .= '$list = db("'.$db.'")->where("checkinfo","'.$checkinfo.'")->order("'.$order.'")->select();';
						}
						else
						{
							$str .= '$list = db("'.$db.'")->where("checkinfo","'.$checkinfo.'")->select();';
						}
					}
				}
				else
				{
					if($limit)
					{
						if($order)
						{
							$str .= '$list = db("'.$db.'")->limit('.$limit.')->order("'.$order.'")->select();';
						}
						else
						{
							$str .= '$list = db("'.$db.'")->limit('.$limit.')->select();';
						}
					}
					else
					{
						if($order)
						{
							$str .= '$list = db("'.$db.'")->order("'.$order.'")->select();';
						}
						else
						{
							$str .= '$list = db("'.$db.'")->select();';
						}
					}
				}
			}
		}
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
		if($checkinfo)
		{
			if($limit)
			{
				if($order)
				{
					$str .= '$list = db("weblink")->where("checkinfo","'.$checkinfo.'")->limit('.$limit.')->order('.$order.')->select();';
				}
				else
				{
					$str .= '$list = db("weblink")->where("checkinfo","'.$checkinfo.'")->limit('.$limit.')->select();';
				}
			}
			else
			{
				$str .= '$list = db("weblink")->where("checkinfo","'.$checkinfo.'")->select();';
			}
		}
		else
		{
			if($limit)
			{
				if($order)
				{
					$str .= '$list = db("weblink")->limit('.$limit.')->order('.$order.')->select();';
				}
				else
				{
					$str .= '$list = db("weblink")->limit('.$limit.')->select();';
				}		
			}
			else
			{
				$str .= '$list = db("weblink")->select();';
			}
		}
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