<?php

	namespace app\home\controller;

	use think\Controller;

	class Cart extends Common{


		public function cartLists(){

			$cartList = db('cart') ->where('status', 0) -> select();

			//print_r($cartList); die;

			$this -> assign('cartList', $cartList);

			return view();

		}




	}



?>