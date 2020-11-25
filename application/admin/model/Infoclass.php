<?php
namespace app\admin\model;
use think\Model;
/**
 * 
 */
class Infoclass extends Model
{
	protected static function init()
    {
        Infoclass::event('before_update', function ($data) {
        	$Infoclass = Infoclass::find($data->id);
        	if(isset($data->picurl))
        	{
        		if($Infoclass->picurl)
        		{
	        		@unlink($_SERVER['DOCUMENT_ROOT'].$Infoclass->picurl);
	        	}
        	}
        	if(isset($data->picarr))
        	{
        		if($Infoclass->picarr)
        		{
        			$picarr = explode(',',$Infoclass->picarr);
	        		foreach ($picarr as $v) {
	        			@unlink($_SERVER['DOCUMENT_ROOT'].$v);
	        		}
        		}
        	}
        });
        Infoclass::event('before_delete', function ($data) {
        	$Infoclass = Infoclass::find($data->id);
        	if(isset($Infoclass->picurl))
    		{
        		@unlink($_SERVER['DOCUMENT_ROOT'].$Infoclass->picurl);
        	}
    		if(isset($Infoclass->picarr))
    		{
    			$picarr = explode(',',$Infoclass->picarr);
        		foreach ($picarr as $v) {
        			@unlink($_SERVER['DOCUMENT_ROOT'].$v);
        		}
    		}
        });
    }
	public function add($data)
	{
		if(empty($data) || !is_array($data))
		{
			return false;
		}
		if($this->save($data))
		{
			if($data['infotype'] == 0)
			{
				db('info')->insert(['classid'=>$this['id'],'posttime'=>time()]);
			}
			return true;
		}
		else
		{
			return false;
		}
	}
	public function edit($data)
	{
		if(empty($data) || !is_array($data))
		{
			return false;
		}
		if($this->update($data))
		{
			return true;
		}
		else
		{
			return false;
		}
	}

	public function treeSelect($pid=0,$level=0)
	{
		$data = $this->order('orderid asc')->select();
		static $arr = [];
		foreach ($data as $v) {
			if($v['parentid'] == $pid)
			{
				$v['classname'] = str_repeat('--|',$level).$v['classname'];
				$arr[] = $v;
				$this->treeSelect($v['id'],$level+1);
			}
		}
		return $arr;
	}
}
?>