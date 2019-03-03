<?php

	namespace app\admin\controller;
	use think\Controller;
	use houdunwang\arr\Arr;

	/*
	商品分类控制层
	 */

	class Category extends Common{

		public function lists(){

			$list = db('category') -> select();

			$list = Arr::channelLevel($list, 0, '>>', 'id', 'pid');

			$this -> assign('list', $list);

			return view();

		}

		public function add(){

			if(input()){

				$data = input();
				//获取最新一条数据的id值, 根据id自增得出最新插入数据的id
				$id = db('category') -> order('id desc') -> find()['id'] + 1;

				if(empty($data['parent_path'])){//如果是顶级分类，则父级图谱是它自身的id值

					$data['parent_path'] = $id;

				}else{ //如果不是顶级分类，则父级图谱是当前获取到的图谱拼接上自身的id
					$data['parent_path'] = $data['parent_path'].'_'.$id;
				}

				//print_r($data); die;
				$row = db('category') -> insert($data);

				echo $row; die;


			}

			//查询不包含第三等级的分类数据
			$cate = db('category') -> where('level', '<>', '3') -> select();

			$cate = Arr::channelLevel($cate, 0, '>>', 'id', 'pid');
			
			//print_r($cate); die;
			$this -> assign('cate', $cate);


			return view();

		}

	}

?>