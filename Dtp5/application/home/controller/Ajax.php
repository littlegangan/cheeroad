<?php

	namespace app\home\controller;

	use think\Controller;

	class Ajax extends Common{

		public function getSpecPrice(){

			if(input()){

				//print_r(input()); die;
				$specPrice = db('goods_spec_price') -> where(input()) -> find();
				return json($specPrice);	

			}

		}

		//加入购物车
		public function addToCart(){

			

			if(input()){

				//先查找规格规则相同和购买状态为0（未下单）且为同一个人的同一个商品				
				$map['member_id'] = $_SESSION['member']['id'];
				$map['spec_rule'] = input('spec_rule');
				$map['status'] = 0;
				$map['goods_id'] = input('goods_id');

				$res = db('cart') -> where($map) -> find();

				//将原数据库中的商品的价格取出和新提交上来的价格进行相加
				$totalPrice = input('total_price') + $res['total_price'];

				//将整形数字转换成浮点型且取后两位小数
				$totalPrice = sprintf("%.2f", $totalPrice); 


				if(!empty($res)){
				 	db('cart') -> where($map) -> setField('total_price', $totalPrice);

					echo db('cart') -> where($map) -> setInc('nums', input('nums')); die;


				}else{

					$data = input();
					$goodsData = db('goods') -> where('id', input('goods_id')) -> find();

					$data['goods_name'] = $goodsData['goods_name'];
					$data['goods_cover'] = $goodsData['goods_cover'];

					$data['member_id'] = $_SESSION['member']['id'];
					echo db('cart') -> insert($data);
				}

			}

		}



	}


?>