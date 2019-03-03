<?php

	/*
		订单表模型层
	*/


	namespace app\admin\model;

	use think\Model;

	class Order extends Model{

		protected $pk = 'id';

		public function getOrderDetailsAttr($value){

			return json_decode($value, true);

		}


	}

?>