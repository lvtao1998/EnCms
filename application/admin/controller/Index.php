<?php
// +----------------------------------------------------------------------
// | Yzncms [ 御宅男工作室 ]
// +----------------------------------------------------------------------
// | Copyright (c) 2018 http://yzncms.com All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 御宅男 <530765310@qq.com>
// +----------------------------------------------------------------------

// +----------------------------------------------------------------------
// | 后台首页
// +----------------------------------------------------------------------
namespace app\admin\controller;

use app\admin\model\AdminUser;
use app\admin\service\User;
use app\common\controller\Adminbase;
use think\facade\Cache;

class Index extends Adminbase
{
    protected $noNeedLogin = [
        'admin/index/login',
        'admin/index/logout',
    ];
    protected $noNeedRight = [
        'admin/index/index',
        'admin/index/cache',
    ];

    //后台首页
    public function index()
    {
        $this->assign('userInfo', $this->_userinfo);
        $this->assign("SUBMENU_CONFIG", json_encode(model("admin/Menu")->getMenuList()));
        return $this->fetch();
    }

    //登录判断
    public function login()
    {
        if (User::instance()->isLogin()) {
            $this->redirect('admin/index/index');
        }
        if ($this->request->isPost()) {
            $data = $this->request->post();
            //验证码
            if (!captcha_check($data['verify'])) {
                $this->error('验证码输入错误！');
                return false;
            }
            // 验证数据
            $rule = [
                'username|用户名' => 'require|alphaDash|length:3,20',
                'password|密码' => 'require|length:3,20',
            ];
            $result = $this->validate($data, $rule);
            if (true !== $result) {
                $this->error($result);
            }
            $AdminUser = new AdminUser;
            $ip = $_SERVER['REMOTE_ADDR'];
            $logincount = db('loginif')->where('ip',$ip)->count();
            if($logincount >= 5)
            {
                $loginif = db('loginif')->where('ip',$ip)->order('id desc')->find();
                if(time() < strtotime($loginif['time'])+300)
                {
                    $this->error('您的账号密码连续多次输入错误，为了保证账号安全请5分钟后再登录');
                }
            }
            if ($AdminUser->login($data['username'], $data['password'])) {
                db('loginif')->where('ip',$ip)->delete();
                $this->success('恭喜您，登陆成功', url('admin/Index/index'));
            } else {
                db('loginif')->insert(['ip'=>$ip,'time'=>date('Y-m-d H:i:s',time())]);
                $this->error("用户名或者密码错误，登陆失败！", url('admin/index/login'));
            }

        } else {
            return $this->fetch();
        }

    }

    //手动退出登录
    public function logout()
    {
        if (User::instance()->logout()) {
            //手动登出时，清空forward
            //cookie("forward", NULL);
            $this->success('注销成功！', url("admin/index/login"));
        }
    }

    //缓存更新
    public function cache()
    {
        $type = $this->request->request("type");
        switch ($type) {
            case 'data' || 'all':
                \util\File::del_dir(ROOT_PATH . 'runtime' . DIRECTORY_SEPARATOR . 'cache');
                Cache::clear();
                if ($type == 'content') {
                    break;
                }

            case 'template' || 'all':
                \util\File::del_dir(ROOT_PATH . 'runtime' . DIRECTORY_SEPARATOR . 'temp');
                if ($type == 'template') {
                    break;
                }
        }
        $this->success('清理缓存');
    }

}
