<?php

	//命名空间
	namespace app\admin\controller;

	//引入thinkphp类文件
	use think\Controller;
	use houdunwang\arr\Arr;

	//后台首页控制层
	class Index extends Controller {

		public function index(){

			//$this->assign('name', 'thinkphp');
			// $data['name'] = 'thinkphp';
			// $data['email'] = 'thinkphp@163.com';
			// $this->assign('data', $data);

			//查询后台顶部导航
			$arr['pid'] = 1;
			$arr['is_show'] = 1;
			$topNav = db('nav') -> where($arr) -> select();

			$this -> assign('topNav', $topNav);


			//先查询所有属于后台模块的导航数据
			$map['module'] = 'admin';
			$map['is_show'] = 1;
			$data = db('nav') -> where($map) -> select();

			//默认左边导航显示为系统设置下的子级导航数据
			$pid = input('pid', 4);
			$leftNav = Arr::channelLevel($data, $pid, "", 'id', 'pid');

			$this -> assign('leftNav', $leftNav);
			$this -> assign('pid', $pid);
			$rules = session('adminInfo.group')[0]['rules'];
			//print_r($rules); die;
			//传递用户具有的权限组
			$this -> assign('rules', $rules);

			//return $this->fetch();
			return view();

		}

		function test(){

			echo 'ok';

		}


	}


?>