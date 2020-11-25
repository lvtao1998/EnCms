<?php
namespace app\admin\controller;
use app\common\controller\Adminbase;
/**
 * 
 */
class Infoimg extends Adminbase
{
	public function index()
    {
        if ($this->request->isAjax()) {
            $filter = input('filter');
            $model = model('Infoimg');
            $page = input('page');
            $limit = input('limit');
            $page = isset($page) ? $page : 1;
            $limit = isset($limit) ? $limit : 10;
            $filter = json_decode($filter);
            if($filter)
            {
                $id = isset($filter->id) ? $filter->id : '';
                $title = isset($filter->title) ? $filter->title : '';
                if($id && empty($title))
                {
                    $_list = $model->alias('a')->join('infoclass b','a.classid = b.id')->field('a.*,b.classname')->where('a.id',$id)->page($page)->limit($limit)->order('a.orderid','desc')->order('a.classid','desc')->select();
                    $count = count($model->alias('a')->join('infoclass b','a.classid = b.id')->field('a.*,b.classname')->where('a.id',$id)->select());
                }
                elseif($title && empty($id))
                {
                    $_list = $model->alias('a')->join('infoclass b','a.classid = b.id')->field('a.*,b.classname')->where('a.title','like','%'.$title.'%')->page($page)->limit($limit)->order('a.orderid','desc')->order('a.classid','desc')->select();
                    $count = count($model->alias('a')->join('infoclass b','a.classid = b.id')->field('a.*,b.classname')->where('a.title','like','%'.$title.'%')->select());
                }
                elseif($id && $title)
                {
                    $_list = $model->alias('a')->join('infoclass b','a.classid = b.id')->field('a.*,b.classname')->where('a.id',$id)->where('a.title','like','%'.$title.'%')->page($page)->limit($limit)->order('a.orderid','desc')->order('a.classid','desc')->select();
                    $count = count($model->alias('a')->join('infoclass b','a.classid = b.id')->field('a.*,b.classname')->where('a.id',$id)->where('a.title','like','%'.$title.'%')->select());
                }
                else
                {
                    $_list = $model->alias('a')->join('infoclass b','a.classid = b.id')->field('a.*,b.classname')->page($page)->limit($limit)->order('a.orderid','desc')->order('a.classid','desc')->select();
                    $count = count($model->select());
                }
            }
            else
            {
                $_list = $model->alias('a')->join('infoclass b','a.classid = b.id')->field('a.*,b.classname')->page($page)->limit($limit)->order('a.orderid','desc')->order('a.classid','desc')->select();
                $count = count($model->select());
            }
            foreach ($_list as $v) {
                $v['posttime'] = date('Y-m-d H:i:s',$v['posttime']);
                $v['flag'] = explode(',',$v['flag']);
                $flag = [];
                foreach ($v['flag'] as $value) {
                    if($value == 'h')
                    {
                        $value = '头条';
                    }
                    if($value == 'c')
                    {
                        $value = '推荐';
                    }
                    if($value == 'a')
                    {
                        $value = '特荐';
                    }
                    if($value == 'f')
                    {
                        $value = '幻灯';
                    }
                    if($value == 's')
                    {
                        $value = '滚动';
                    }
                    if($value == 'j')
                    {
                        $value = '跳转';
                    }
                    if($value == '')
                    {
                        $value = '无';
                    }
                    $flag[] = $value;
                }
                $v['flag'] = implode('&nbsp;&nbsp;&nbsp;',$flag);
            }
            $result = array("code" => 0, 'count' => $count, "data" => $_list);
            return json($result);
        }
        return $this->fetch();
    }
    public function add()
    {
        $infoclassmodel = model('Infoclass');
        $infoclass = $infoclassmodel->treeSelect();
        $model = model('Infoimg');
        $author = $_SESSION['think_']['admin_user_auth']['username'];
        if(request()->isPost())
        {
            $data = input('post.');
            if($data['picarr'])
            {
                $data['picarr'] = implode(',',$data['picarr']);
            }
            if($data['flag'])
            {
                $data['flag'] = implode(',',$data['flag']);
            }
            if($data['parentid'] == 0)
            {
                $data['parentstr'] = '0,';
            }
            else
            {
                $parentstr = $model->find($data['parentid']);
                $data['parentstr'] = $parentstr['parentstr'].$data['parentid'].',';
            }
            $data['posttime'] = strtotime($data['posttime']);
            if($data['hits'] == 0)
            {
                $data['hits'] = rand(500,1000);
            }
            $result = $this->validate($data,'Infolist');
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
            'infoclass'=>$infoclass,
            'author'=>$author,
            'time'=>date('Y-m-d H:i:s',time()),
        ]);
        return view();
    }
    public function edit()
    {
        $model = model('Infoimg');
        $infoclassmodel = model('Infoclass');
        $infoclass = $infoclassmodel->treeSelect();
        $id = input('id');
        $edit = $model->find($id);
        if(empty($edit))
        {
            $this->error('内容不存在！');
        }
        $edit['flag'] = explode(',',$edit['flag']);
        $edit['picarr'] = explode(',',$edit['picarr']);
        if(request()->isPost())
        {
            $data = input('post.');
            if($data['picarr'])
            {
                $data['picarr'] = implode(',',$data['picarr']);
            }
            if($data['flag'])
            {
                $data['flag'] = implode(',',$data['flag']);
            }
            else
            {
                $data['flag'] = '';
            }
            if(empty($data['picurl']))
            {
                unset($data['picurl']);
            }
            if($data['picurl'] == "404")
            {
                $data['picurl'] = '';
            }
            if($data['parentid'] == 0)
            {
                $data['parentstr'] = '0,';
            }
            else
            {
                $parentstr = $model->find($data['parentid']);
                $data['parentstr'] = $parentstr['parentstr'].$data['parentid'].',';
            }
            $data['posttime'] = strtotime($data['posttime']);
            $result = $this->validate($data,'Infolist');
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
            'infoclass'=>$infoclass,
            'edit'=>$edit,
            'time'=>date('Y-m-d H:i:s',time()),
        ]);
        return view();
    }
    public function del()
    {
        $id = input('id');
        $model = model('Infoimg');
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
        $model = model('Infoimg');
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