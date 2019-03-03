<?php

	/*
		前台首页控制层
	*/

	namespace app\home\controller;

	use think\Controller;

	use houdunwang\arr\Arr;

	class Index extends Common{

		public function index(){


			$cateList = db('category') -> select();

			$cateList = Arr::channelLevel($cateList, 0, "", 'id', 'pid');
			//print_r($cateList); die;

			$this -> assign('cateList', $cateList);

			return view();

		}

	}

?>