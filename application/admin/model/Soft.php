<?php
namespace app\admin\model;
use think\Model;
/**
 * 
 */
class Soft extends Model
{
	protected static function init()
    {
        Soft::event('before_update', function ($data) {
        	$Soft = Soft::find($data->id);
        	if(isset($data->picurl))
        	{
        		if($Soft->picurl)
        		{
	        		@unlink($_SERVER['DOCUMENT_ROOT'].$Soft->picurl);
	        	}
        	}
        	if(isset($data->picarr))
        	{
        		if($Soft->picarr)
        		{
        			$picarr = explode(',',$Soft->picarr);
	        		foreach ($picarr as $v) {
	        			@unlink($_SERVER['DOCUMENT_ROOT'].$v);
	        		}
        		}
        	}
        });
        Soft::event('before_delete', function ($data) {
        	$Soft = Soft::find($data->id);
        	if($Soft->picurl)
    		{
        		@unlink($_SERVER['DOCUMENT_ROOT'].$Soft->picurl);
        	}
    		if($Soft->picarr)
    		{
    			$picarr = explode(',',$Soft->picarr);
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