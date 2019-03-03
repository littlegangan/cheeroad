<?php
	namespace app\admin\controller;

	use think\Controller;

	/**
	 * 商品规格控制层
	 */
	class GoodsSpec extends Common{
		
		public function lists(){

			//$list = db('goods_spec') -> select();
			//GoodsSpec为商品规格模型层，goods, goodsSpecItem为商品规格模型层中的方法

			//点击查看规格，显示对应的商品规格
			if(input('model_id')){
				$map['model_id'] = input('model_id');
				$list = model('GoodsSpec') -> where($map) -> with(['goods', 'goodsSpecItem']) -> select() -> toArray();
				//print_r($list); die;
			}else{ //如果用户没有点击查看规格，则显示所有商品规格

				$list = model('GoodsSpec') -> with(['goods', 'goodsSpecItem']) -> select() -> toArray();
			}
			//print_r($list); die;

			$this -> assign('list', $list);
			return view();

		}

		public function add(){


			//查询所有商品模型
			$goodsModel = db('goods_model') -> select();

			$this -> assign('goodsModel', $goodsModel);

			if(input()){

				//print_r(input()); die;
				//将商品规格项的内容转换成数组，\r\n为换行符
				$spec_item_name = explode("\r\n", input('spec_item_name'));
				//print_r($spec_item_name); die;
				
				//模型层添加数据使用allowField过滤字段
				//数据库添加数据使用strict过滤表中不存在的字段
				
				//将数据插入到商品规格表
				$id = db('goods_spec') -> strict(false) -> insertGetId(input());

				if($id > 0){
					//echo $id; die;
					
					//循环所有对应的商品规格项
					foreach($spec_item_name as $value){

						$specItem['spec_item_name'] = $value;
						$specItem['spec_id'] = $id;

						//将数据逐一插入到商品规格项表中
						db('goods_spec_item') -> insert($specItem);

					}

					echo $id; die;
				}else{
					echo 0; die;
				}

			}

			return view();

		}
		
	}



?>