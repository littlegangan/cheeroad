<?php

		namespace app\admin\model;

		use think\Model;

		/*
			商品规格关联模型层
		 */

		class GoodsSpec extends Model{

			//设置主键属性
			protected $pk = 'id';


			//关联商品模型表数据(多对一)
			public function goods(){

				/*
				belongsTo('关联模型','外键','关联主键')
				关联模型（必须）：模型名或者模型类名
				外键：当前模型外键，默认的外键名规则是关联模型名+_id
				关联主键：关联模型主键，一般会自动获取也可以指定传入
				 */
				return $this -> belongsTo('GoodsModel', 'model_id', 'id');
				
			}

			//关联商品规格项表数据（一对多）
			public function goodsSpecItem(){

				/*
				hasMany('关联模型','外键','主键');
				关联模型（必须）：模型名或者模型类名
    			外键：关联模型外键，默认的外键名规则是当前模型名+_id
    			主键：当前模型主键，一般会自动获取也可以指定传入
				 */
				return $this -> hasMany('GoodsSpecItem', 'spec_id', 'id');

			}			


		}


?>