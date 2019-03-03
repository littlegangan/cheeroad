<?php

	//命名空间
	namespace app\admin\controller;

	//引入thinkphp类文件
	use think\Controller;

	use houdunwang\arr\Arr;

	//导航控制层
	class Nav extends Common {

		//导航列表
		public function lists(){

			$navList = db('nav') -> select();
			//$navList = db('nav') -> paginate(); //每页显示一条记录
			//print_r($navList); die;
			//获取页码总数
			//$pages = $navList -> render();
			//echo $pages;die;
			//将返回的数据转换为数组格式
			//$this -> assign('navList', $navList -> toArray());

			$navList = Arr::channelLevel($navList, 0, "——", 'id', 'pid');

			//print_r($navList); die;

			//tp5原生对象数据格式
			$this -> assign('navList', $navList);

			//$this -> assign('pages', $pages);

			return view();

		}

		//导航添加
		public function add(){
			
			//if(request() -> isPost()){
			if(input()){
				//print_r(input());die;
				$row = db('nav') -> insert(input());
				if($row > 0){
					$this -> success('添加成功', 'list');die;
				}else{
					$this -> error('添加失败');die;
				}			
			}
			//查询顶级导航
			$navCate = db('nav') -> where('pid = 0') -> select();
			$this -> assign('navCate', $navCate); //传递到导航添加页面进行显示
			return view();

		}

		//导航编辑
		public function edit(){

			return view();

		}

		//导航删除
		public function del(){

			// $row = db('nav') -> delete(input('id'));

			// if($row > 0){
			// 	$this -> success('删除成功', 'list');die;
			// }else{
			// 	$this -> error('删除失败', 'list');die;
			// }

		}


	}

?>