<?php
namespace app\admin\model;
use think\Model;
/**
 * 
 */
class Weblink extends Model
{
	protected static function init()
    {
        Weblink::event('before_update', function ($data) {
        	$Weblink = Weblink::find($data->id);
        	if(isset($data->picurl))
        	{
        		if($Weblink->picurl)
        		{
	        		@unlink($_SERVER['DOCUMENT_ROOT'].$Weblink->picurl);
	        	}
        	}
        });
        Weblink::event('before_delete', function ($data) {
        	$Weblink = Weblink::find($data->id);
        	if($Weblink->picurl)
    		{
        		@unlink($_SERVER['DOCUMENT_ROOT'].$Weblink->picurl);
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
}
?>