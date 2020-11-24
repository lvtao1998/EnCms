<?php
namespace app\admin\controller;
use app\common\controller\Adminbase;
/**
 * 
 */
class Infoclass extends Adminbase
{
	// 页面显示
	public function index()
	{
		$model = model('Infoclass');
		if(request()->isAjax())
		{		
			$_list = $model->order('orderid asc')->select();
			$total = count($model->select());
			$result = array("code" => 0, "count" => $total, "data" => $_list);
            return json($result);
		}
		return view();
	}

	public function add()
	{
		$model = model('Infoclass');
		$parent = $model->treeSelect();
		$parentid = input('parentid');
		if(request()->isPost())
		{
			$data = input('post.');
            if($data['parentid'] == 0)
            {
            	$data['parentstr'] = '0,';
            }
            else
            {
            	$parentstr = $model->find($data['parentid']);
            	$data['parentstr'] = $parentstr['parentstr'].$data['parentid'].',';
            }
            $result = $this->validate($data,'Infoclass');
            if(true !== $result){
			    // 验证失败 输出错误信息
			    $this->error($result);
			}
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
			'parent' => $parent,
			'parentid'=>$parentid,
		]);
		return view();
	}

	public function edit()
	{
		$id = input('id');
		$model = model('Infoclass');
		$parent = $model->treeSelect();
		$edit = $model->find($id);
		if(empty($edit))
		{
			$this->error('内容不存在！');
		}
		if(request()->isPost())
		{
			$data = input('post.');
			if(empty($data['picurl']))
			{
				unset($data['picurl']);
			}
			if($data['picurl'] == 404)
            {
                $data['picurl'] = '';
            }
            if($data['parentid'] == '0')
            {
            	$data['parentstr'] = '0,';
            }
            else
            {
            	$parentstr = $model->find($data['parentid']);
            	$data['parentstr'] = $parentstr['parentstr'].$data['parentid'].',';
            }
            if($data['infotype'] == 0)
			{
				$info = $model::find($data['id']);
				if($info['infotype'] != 0)
				{
					db('info')->insert(['classid'=>$data['id'],'posttime'=>time()]);
				}
			}
			else
			{
				$info = $model::find($data['id']);
				if($info['infotype'] == 0)
				{
					db('info')->where('classid',$data['id'])->delete();
				}
			}
            $result = $this->validate($data,'Infoclass');
            if(true !== $result){
			    // 验证失败 输出错误信息
			    $this->error($result);
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
			'parent' => $parent,
			'edit'=>$edit,
		]);
		return view();
	}

	public function del()
	{
		$model = model('Infoclass');
		$id = $this->request->param('id/d');
        if(empty($id)) 
        {
            $this->error('ID错误');
        }
        $result = $model->where(["parentid" => $id])->find();
        if($result) 
        {
            $this->error("含有子栏目，无法删除！");
        }
        if($model->destroy($id) !== false) 
        {
            $this->success("删除栏目成功！");
        } 
        else 
        {
            $this->error("删除失败！");
        }
	}

	public function multi()
	{
		$param = input('param');
		$model = model('Infoclass');
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