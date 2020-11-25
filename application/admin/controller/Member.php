<?php
namespace app\admin\controller;
use app\common\controller\Adminbase;
/**
 * 
 */
class Member extends Adminbase
{
	public function index()
	{
		if(request()->isAjax())
		{
			$model = model('Member');
            $page = input('page');
            $limit = input('limit');
            $page = isset($page) ? $page : 1;
            $limit = isset($limit) ? $limit : 10;
			$_list = $model->page($page)->limit($limit)->select();
            foreach ($_list as $v) {
                $v['logintime'] = date('Y-m-d H:i:s',$v['logintime']);
            }
			$count = count($_list);
			$result = array("code" => 0, 'count' => $count, "data" => $_list);
			return json($result);
		}
		return view();
	}
	public function add()
	{
        $model = model('Member');
        if(request()->isPost())
        {
            $data = input('post.');
            $data['regip'] = $_SERVER['REMOTE_ADDR'];
            if($data['password'] == $data['repassword'])
            {
                unset($data['repassword']);
                $data['password'] = encrypt_password($data['password']);
                $data['password'] = $data['password']['password'];
            }
            else
            {
                $this->error('两次密码不一致！');
            }
            if(!isset($data['enteruser']))
            {
                $data['enteruser'] = '';
            }
            if($data['regtime'])
            {
                $data['regtime'] = strtotime($data['regtime']);
            }
            if($data['avatar'])
            {
                $data['avatar'] = thumb($data['avatar']);
            }
            $res = $model->add($data);
            if($res)
            {
                $this->success('注册成功！');
            }
            else
            {
                $this->error('注册失败');
            }
        }
        $this->assign([
            'time'=>date('Y-m-d H:i:s',time()),
        ]);
		return view();
	}
	public function edit()
	{
        $model = model('Member');
        $id = input('id');
        $edit = $model->find($id);
        $edit['regtime'] = date('Y-m-d H:i:s',$edit['regtime']);
        if(request()->isPost())
        {
            $data = input('post.');
            if($data['password'] || $data['repassword'])
            {
                if($data['password'] == $data['repassword'])
                {
                    unset($data['repassword']);
                    $data['password'] = encrypt_password($data['password']);
                    $data['password'] = $data['password']['password'];
                }
                else
                {
                    $this->error('两次密码不一致！');
                }
            }
            else
            {
                unset($data['password']);
                unset($data['repassword']);
            }
            if(!isset($data['enteruser']))
            {
                $data['enteruser'] = '';
            }
            if($data['regtime'])
            {
                $data['regtime'] = strtotime($data['regtime']);
            }
            if($data['avatar'])
            {
                $data['avatar'] = thumb($data['avatar']);
            }
            else
            {
                unset($data['avatar']);
            }
            if($data['avatar'] == 404)
            {
                $data['avatar'] = '';
            }
            $res = $model->edit($data);
            if($res)
            {
                $this->success('修改成功！');
            }
            else
            {
                $this->error('修改失败');
            }
        }
        $this->assign([
            'edit'=>$edit,
        ]);
		return view();
	}
	public function del()
    {
        $id = input('id');
        $model = model('Member');
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
}
?>