<?php
namespace app\admin\model;
use think\model;
/**
 * 
 */
class Member extends Model
{
	protected static function init()
    {
        Member::event('before_update', function ($data) {
        	$Member = Member::find($data->id);
        	if(isset($data->avatar))
        	{
        		if($Member->avatar)
        		{
	        		@unlink($_SERVER['DOCUMENT_ROOT'].$Member->avatar);
	        	}
        	}
        });
        Member::event('before_delete', function ($data) {
        	$Member = Member::find($data->id);
        	if($Member->avatar)
    		{
        		@unlink($_SERVER['DOCUMENT_ROOT'].$Member->avatar);
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