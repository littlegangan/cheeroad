<?php

	//命名空间
	namespace app\home\controller;

	use think\Controller;

	use houdunwang\arr\Arr;
	
	use think\auth\Auth;

	/**
	 * 后台公共控制层
	 */
	class Common extends Controller{
		
		function __construct(){

			parent::__construct();

			//查询前台中间导航
			$arr['module'] = 'home';
			$arr['pid'] = 2;
			$arr['is_show'] = 1;
			$arr['position'] = 1; //处于中间的导航
			$middleNav = db('nav') -> where($arr) -> select();

			//print_r($middleNav); die;

			session_start();
			if(!empty($_SESSION['member']))
				$this -> assign('username', $_SESSION['member']['username']);

			$this -> assign('middleNav', $middleNav);

			

		}
	}

?>