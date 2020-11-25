<?php
namespace app\admin\controller;
use app\common\controller\Adminbase;
/**
 * 
 */
class Weblink extends Adminbase
{
	public function index()
    {
        if ($this->request->isAjax()) {
            $model = model('Weblink');
            $page = input('page');
            $limit = input('limit');
            $page = isset($page) ? $page : 1;
            $limit = isset($limit) ? $limit : 10;
            $_list = $model->page($page)->limit($limit)->select();
            $count = count($model->select());
            foreach ($_list as $v) {
                $v['posttime'] = date('Y-m-d H:i:s',$v['posttime']);
            }
            $result = array("code" => 0, 'count' => $count, "data" => $_list);
            return json($result);
        }
        return $this->fetch();
    }
    public function add()
    {
        $model = model('Weblink');
        if(request()->isPost())
        {
            $data = input('post.');
            $data['posttime'] = strtotime($data['posttime']);
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
        $model = model('Weblink');
        $id = input('id');
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
            if($data['picurl'] == "404")
            {
                $data['picurl'] = '';
            }
            $data['posttime'] = strtotime($data['posttime']);
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
    public function del()
    {
        $id = input('id');
        $model = model('Weblink');
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
        $model = model('Weblink');
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