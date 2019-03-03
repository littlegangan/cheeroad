<?php

	//命名空间
	namespace app\admin\controller;

	use think\Controller;

	use houdunwang\arr\Arr;
	
	use think\auth\Auth;

	/**
	 * 后台公共控制层
	 */
	class Common extends Controller{
		
		function __construct(){

			parent::__construct();

			//获取权限规则（url）
			// $rule = request() -> path();
			// $actList = ['login', 'index', 'out']; //不需要验证权限的方法操作
			// if(!in_array($act, $actList) && empty(session('adminInfo'))){

			// 	$this -> error('请先登录'); die;

			// }

			// if(!in_array($act, $actList)){

			// 	$auth = Auth::instance();
			// 	//var_dump($auth); die;
			// 	//check()第一个参数是权限规则， 第二个参数是用户uid
			// 	if(!$auth -> check($rule, session('adminInfo.id'))){

			// 		$this -> error('您没有权限访问'); die;
			// 	}

			// }
			// $con = request() -> controller(); //获取控制器名称
			// $act = request() -> action(); //获取控制器中的方法名称
			// print_r(input('pid')); die;

			//查询后台顶部导航
			$arr['pid'] = 1;
			$arr['is_show'] = 1;
			$topNav = db('nav') -> where($arr) -> select();

			$this -> assign('topNav', $topNav);

			//先查询所有属于后台模块的导航数据
			$map['module'] = 'admin';
			$map['is_show'] = 1;
			$data = db('nav') -> where($map) -> select();
			// print_r(input('pid'));
			//默认左边导航显示为系统设置下的子级导航数据
			// $pid = input('pid', 4);
			// $pid = 4;
			if(empty(input('pid'))){
				$pid = 4;
			}else{
				$pid = input('pid');
			}
			// echo $pid; die;
			$leftNav = Arr::channelLevel($data, $pid, "", 'id', 'pid');
			// print_r($leftNav); die;
			$this -> assign('leftNav', $leftNav);

			$this -> assign('pid', $pid);

			//传递用户具有的权限组
			$this -> assign('rules', session('adminInfo.group')[0]['rules']);
			// print_r(session('adminInfo.group')[0]['rules']); die;

		}
	}

?>