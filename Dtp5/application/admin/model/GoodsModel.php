<?php

	namespace app\admin\model;

	use think\Model;

	/*
		商品模型关联层
	 */

	class GoodsModel extends Model{


		//设置主键属性
		protected $pk = 'id';

		//定义相对关联（和商品规格表关联）
		// public function goodsSpec(){

		// 	return $this -> belongsTo('GoodsSpec');

		// }


	}



?>