<?php

	namespace app\admin\controller;
	use think\Controller;

	/*
		商品模型控制层
	 */

	class GoodsModel extends Common{

		public function lists(){

			//查询所有数据并规定每页显示5条记录
			$list = db('goods_model') -> order('id desc') -> paginate(5);

			//计算得到总页码数并进行渲染
			$pages = $list -> render();

			$this -> assign('list', $list -> toArray());
			$this -> assign('pages', $pages);
			return view();

		}

		public function add(){

			if(input()){

				//print_r(input()); die;
				$row = db('goods_model') -> insert(input());
				echo $row; die;

			}

			return view();
		}

		public function edit(){

			return view();

		}

		public function del(){



		}

	}


?>