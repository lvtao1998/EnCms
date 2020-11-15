<?php
namespace app\admin\model;
use think\Model;
/**
 * 
 */
class Infoimg extends Model
{
	protected static function init()
    {
        Infoimg::event('before_update', function ($data) {
        	$Infoimg = Infoimg::find($data->id);
        	if(isset($data->picurl))
        	{
        		if($Infoimg->picurl)
        		{
	        		@unlink($_SERVER['DOCUMENT_ROOT'].$Infoimg->picurl);
	        	}
        	}
        	if(isset($data->picarr))
        	{
        		if($Infoimg->picarr)
        		{
        			$picarr = explode(',',$Infoimg->picarr);
	        		foreach ($picarr as $v) {
	        			@unlink($_SERVER['DOCUMENT_ROOT'].$v);
	        		}
        		}
        	}
        });
        Infoimg::event('before_delete', function ($data) {
        	$Infoimg = Infoimg::find($data->id);
        	if($Infoimg->picurl)
    		{
        		@unlink($_SERVER['DOCUMENT_ROOT'].$Infoimg->picurl);
        	}
    		if($Infoimg->picarr)
    		{
    			$picarr = explode(',',$Infoimg->picarr);
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