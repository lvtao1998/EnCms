<?php
namespace app\admin\model;
use think\Model;
/**
 * 
 */
class Info extends Model
{
	protected static function init()
    {
        Info::event('before_update', function ($data) {
        	$Info = Info::find($data->id);
        	if(isset($data->picurl))
        	{
        		if($Info->picurl)
        		{
	        		@unlink($_SERVER['DOCUMENT_ROOT'].$Info->picurl);
	        	}
        	}
        });
        Info::event('before_delete', function ($data) {
        	$Info = Info::find($data->id);
        	if($Info->picurl)
    		{
        		@unlink($_SERVER['DOCUMENT_ROOT'].$Info->picurl);
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