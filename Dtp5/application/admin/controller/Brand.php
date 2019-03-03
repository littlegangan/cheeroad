<?php

	namespace app\admin\controller;

	/**
	 * 品牌控制层
	 */
	class Brand extends Common{
		

		public function lists(){

			$list = db('brand') -> select();

			$this -> assign('list', $list);

			return view();
		}

		public function add(){

			if(input()){

				$data = input();
				$data['logo'] = session('savePath');
				//print_r($data); die;
				$row = db('brand') -> insert($data);

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