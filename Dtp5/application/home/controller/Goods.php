<?php

	/*
		前台首页控制层
	*/

	namespace app\home\controller;

	use think\Controller;

	use houdunwang\arr\Arr;

	class Goods extends Common{

		//商品列表
		public function goodsList(){


			$goodsList = db('goods') -> select();
			//print_r($goodsList); die;
			$this -> assign('goodsList', $goodsList);
			return view();

		}

		//商品详情
		public function details(){

			if(input()){

				$id = input('id');
				
				$goods = model('admin/Goods') -> with(['goodsImage']) -> getById($id) -> toArray();

				//print_r($goods); die; 

				//查询商品模型对应的规格
				$map['model_id'] = $goods['model_id'];
				$specList = model('admin/GoodsSpec') -> with(['goodsSpecItem']) -> where($map) -> select() ->toArray();

				//查询商品对应的规格项组合
				$arr['goods_id'] = $id;
				$specRule = db('goods_spec_price') -> where($arr) -> column('spec_rule');

				$specRule = implode('_', $specRule);
				$specRule = explode('_', $specRule);
				$specRule = array_unique($specRule);
				//print_r($specRule); die;

				$this -> assign('specRule', $specRule);

				$this -> assign('specList', $specList);

				$this -> assign('goods', $goods);

			}

			return view();
		}

	}

?>