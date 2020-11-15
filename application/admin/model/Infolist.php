<?php
namespace app\admin\model;
use think\Model;
/**
 * 
 */
class Infolist extends Model
{
	protected static function init()
    {
        Infolist::event('before_update', function ($data) {
        	$Infolist = Infolist::find($data->id);
        	if(isset($data->picurl))
        	{
        		if($Infolist->picurl)
        		{
	        		@unlink($_SERVER['DOCUMENT_ROOT'].$Infolist->picurl);
	        	}
        	}
        	if(isset($data->picarr))
        	{
        		if($Infolist->picarr)
        		{
        			$picarr = explode(',',$Infolist->picarr);
	        		foreach ($picarr as $v) {
	        			@unlink($_SERVER['DOCUMENT_ROOT'].$v);
	        		}
        		}
        	}
        });
        Infolist::event('before_delete', function ($data) {
        	$Infolist = Infolist::find($data->id);
        	if($Infolist->picurl)
    		{
        		@unlink($_SERVER['DOCUMENT_ROOT'].$Infolist->picurl);
        	}
    		if($Infolist->picarr)
    		{
    			$picarr = explode(',',$Infolist->picarr);
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