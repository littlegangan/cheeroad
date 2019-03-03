<?php

	/*
		商品表模型层
	*/

	namespace app\admin\model;

	use think\Model;

	class Goods extends Model{

		//设置主键属性
		protected $pk = 'id';

		//商品模型表关联
		function goodsModel(){

			return $this -> belongsTo('GoodsModel', 'model_id', 'id');

		}

		//商品分类表关联
		function goodsCate(){

			return $this -> belongsTo('Category', 'category_id', 'id');

		}

		//商品品牌表关联
		function goodsBrand(){

			return $this -> belongsTo('Brand', 'brand_id', 'id');

		}

		//商品相册表关联
		function goodsImage(){

			/*
			一对多关联
			hasMany('关联模型','外键','主键');
			*/
			return $this -> hasMany('GoodsImage');

		}

	}



?>