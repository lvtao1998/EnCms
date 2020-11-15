<?php
namespace app\admin\controller;
use app\common\controller\Adminbase;
/**
 * 
 */
class Message extends Adminbase
{
	public function index()
	{
		$model = model('Message');
		if(request()->isAjax())
		{
			$page = isset($page) ? $page : 1;
			$limit = isset($limit) ? $limit : 10;
            $_list = $model->page($page)->select();
			$count = count($_list);
			foreach ($_list as $key => $value) {
				$value['posttime'] = date('Y-m-d H:i:s',$value['posttime']);
			}
			$result = array("code" => 0, 'count' => $count, "data" => $_list);
            return json($result);
		}
		return view();
	}
	public function add()
	{
		$model = model('Message');
		if(request()->isPost())
		{
			$data = input('post.');
			if($data['recont'])
			{
				$data['retime'] = time();
			}
			if($data['posttime'])
			{
				$data['posttime'] = strtotime($data['posttime']);
			}
			$data['ip'] = $_SERVER['REMOTE_ADDR'];
			$res = $model->add($data);
			if($res)
			{
				$this->success('添加成功！');
			}
			else
			{
				$this->error('添加失败！');
			}
		}
		$this->assign([
			'time'=>date('Y-m-d H:i:s',time()),
		]);
		return view();
	}
	public function edit()
	{
		$model = model('Message');
		$id = input('id');
		$edit = $model->find($id);
		if(empty($edit))
		{
			$this->error('内容不存在！');
		}
		if(request()->isPost())
		{
			$data = input('post.');
			if($data['recont'])
			{
				$data['retime'] = time();
			}
			if($data['posttime'])
			{
				$data['posttime'] = strtotime($data['posttime']);
			}
			if(!isset($data['htop']))
			{
				$data['htop'] = '';
			}
			if(!isset($data['rtop']))
			{
				$data['rtop'] = '';
			}
			$data['ip'] = $_SERVER['REMOTE_ADDR'];
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
			'time'=>date('Y-m-d H:i:s',time()),
			'edit'=>$edit,
		]);
		return view();
	}
	public function del()
    {
        $id = input('id');
        $model = model('Message');
        if(empty($id))
        {
            $this->error('ID不能为空！');
        }
        $err = $model->find($id);
        if(empty($err))
        {
            $this->error('数据不存在！');
        }
        $res = $model->destroy($id);
        if($res)
        {
            $this->success('删除成功！');
        }
        else
        {
            $this->error('删除失败！');
        }
    }
	public function multi()
    {
        $param = input('param');
        $model = model('Message');
        if($param)
        {
            $data = input('post.');
            unset($data['param']);
        }
        else
        {
            $data = input('post.');
        }
        $res = $model->update($data);
        if($res)
        {
            $this->success('操作成功！');
        }
        else
        {
            $this->error('操作失败！');
        }
    }
}
?>