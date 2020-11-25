<?php
namespace app\admin\controller;
use app\common\controller\Adminbase;
/**
 * 
 */
class Info extends Adminbase
{
	public function index()
	{
		if(request()->isAjax())
		{
			$model = model('Info');
			$page = input('page');
			$limit = input('limit');
			$page = isset($page) ? $page : 1;
			$limit = isset($limit) ? $limit : 10;
			$_list = $model->alias('a')->page($page)->limit($limit)->field('a.id,b.classname,a.posttime,a.classid')->join('infoclass b','a.classid = b.id')->select();
			foreach ($_list as $v) {
				$v['posttime'] = date('Y-m-d H:i:s',$v['posttime']);
			}
			$count = count($model->select());
			$result = array("code" => 0, 'count' => $count, "data" => $_list);
			return json($result);
		}
		return view();
	}
	public function edit()
	{
		$model = model('Info');
		$id = input('id');
		$edit = $model->alias('a')->field('a.*,b.classname')->join('infoclass b','a.classid = b.id')->find($id);
		if(empty($edit))
		{
			$this->error('数据不存在！');
		}
		if(request()->isPost())
		{
			$data = input('post.');
			if(empty($data['picurl']))
			{
				unset($data['picurl']);
			}
			if($data['picurl'] == "404")
            {
                $data['picurl'] = '';
            }
			if($data['posttime'])
			{
				$data['posttime'] = strtotime($data['posttime']);
			}
			$res = $model->edit($data);
			if($res)
			{
				$this->success('修改成功！');
			}
			else
			{
				$this->error('修改失败！');
			}
		}
		$this->assign([
			'edit'=>$edit,
			'time'=>date('Y-m-d H:i:s',time()),
		]);
		return view();
	}
}
?>