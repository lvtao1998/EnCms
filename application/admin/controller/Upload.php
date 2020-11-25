<?php
namespace app\admin\controller;
use think\Controller;
/**
 * 
 */
class Upload extends Controller
{
	public function upload()
	{
        $width = input('width');
        $height = input('height');
        $watermark = input('watermark');
		$image = ['code'=>0,'msg'=>"",'data'=>['src'=>$this->uploads($width,$height,$watermark)]];
		return json($image);
	}
    public function uploads($width,$height,$watermark){
        if($width && $height && empty($watermark))
        {
            //缩略图未完成 
            $image = \think\Image::open(request()->file('file'));
            $time = time();
            $image->thumb($width,$height,\think\Image::THUMB_CENTER)->save(ROOT_PATH . 'public' . DS . 'uploads' . DS . 'thumb'. DS . $time .'.png');
            return DS . 'public' . DS . 'uploads' . DS . 'thumb'. DS . $time .'.png';
        }
        elseif($width && $height && $watermark){
            //缩略图未完成 
            $image = \think\Image::open(request()->file('file'));
            $time = time();
            $image->thumb($width,$height,\think\Image::THUMB_CENTER)->text('十年磨一剑',ROOT_PATH.'HYQingKongTiJ.ttf',20,'#ffffff',,\think\Image::WATER_CENTER)->save(ROOT_PATH . 'public' . DS . 'uploads' . DS . 'thumb'. DS . $time .'.png');
            return DS . 'public' . DS . 'uploads' . DS . 'thumb'. DS . $time .'.png';
        }
        elseif($watermark && empty($width) && empty($height)){
            //缩略图未完成 
            $image = \think\Image::open(request()->file('file'));
            $time = time();
            $image->text('十年磨一剑',ROOT_PATH.'HYQingKongTiJ.ttf',20,'#ffffff',,\think\Image::WATER_CENTER)->save(ROOT_PATH . 'public' . DS . 'uploads' . DS . 'thumb'. DS . $time .'.png');
            return DS . 'public' . DS . 'uploads' . DS . 'thumb'. DS . $time .'.png';
        }
        else
        {
            // 获取表单上传的文件，例如上传了一张图片
            $file = request()->file('file');
            if($file){
                //将传入的图片移动到框架应用根目录/public/uploads/ 目录下，ROOT_PATH是根目录下，DS是代表斜杠 / 
                $info = $file->move(ROOT_PATH . 'public' . DS . 'uploads' . DS . 'image');
                if($info){
                    return DS . 'public' . DS . 'uploads' . DS . 'image'. DS .$info->getSaveName();
                }else{
                    // 上传失败获取错误信息
                    echo $file->getError();die;
                }
            }
        }
    }
    public function aimgage()
    {
        $id = input('id');
        $src = input('src');
        $image = ['status'=>1,'msg'=>'','title'=>'','id'=>$id,'start'=>0,'data'=>["0"=>['src'=>$src]]];
        return json($image);
    }
    public function delImg(){
        $picurl = input("picurl");
        $res = @unlink($_SERVER['DOCUMENT_ROOT'].$picurl);
        if($res){
            $this->success("删除成功！");
        }else{
            $this->error("删除失败！");
        }
    }
}
?>