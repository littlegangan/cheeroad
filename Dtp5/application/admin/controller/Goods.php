<?php

	namespace app\admin\controller;

	use think\Model;

	/*
		商品控制层
	*/

	class Goods extends Common{

		public function lists(){

			$goodsList = model('goods') -> with(['goodsModel', 'goodsCate', 'goodsBrand']) -> select() -> toArray();
			//print_r($goodsList); die;

			$this -> assign('goodsList', $goodsList);
			return view();
		}


		public function add(){

			if(input()){
				// if($_SESSION['goods_img'])
				// 	unset($_SESSION['goods_img']);
				//print_r(input()); die;
				$goods = input();
				//商品编号
				$goods['serial_number'] = chr(mt_rand(97, 122)).date('YmdHis', time()).mt_rand(100000, 999999);
				//商品封面图片路径
				$goods['goods_cover'] = $_SESSION['goods_cover'];

				//将商品详情内容进行特殊字符化
				$goods['goods_details'] = htmlspecialchars($goods['goods_details']);

				$id = db('goods') ->strict(false) -> insertGetId($goods);

				//商品规格库存
				$specNum = input('specNum/a');
				$goodsImgs = $_SESSION['goods_img'];


				//给商品表添加数据
				if($id > 0){

					foreach ($specNum as $key => $value) {
						
						$value['goods_id'] = $id; //商品id
						$value['spec_rule'] = substr($value['spec_rule'], 1);
						$value['spec_desc'] = substr($value['spec_desc'], 1);
						db('goods_spec_price') -> insert($value);

					}

					foreach ($goodsImgs as $key => $value) {
						
						$goodsImgs['goods_id'] = $id;
						$goodsImgs['img_url'] = $value;
						db('goods_image') -> strict(false) -> insert($goodsImgs);

					}


					unset($_SESSION['goods_cover']);
					unset($_SESSION['goods_img']);
					echo $id; die;
				}else{
					echo 0; die;
				}

			
			}

			$modelList = db('goods_model') -> select();

			//获取商品顶级分类列表数据
			$categoryList = db('category') -> where('pid', 0) -> select();

			//获取商品品牌列表数据
			$brandList = db('brand') -> select();
			
			$this -> assign('brandList', $brandList);

			$this -> assign('categoryList', $categoryList);

			$this -> assign('modelList', $modelList);

			
			return view();
		}

		//点击取消按钮则删除当前上传路径存放到session中的所有图片
		public function cancelUpload(){

			if(!empty($_SESSION['goods_img'])){
				foreach ($_SESSION['goods_img'] as $key => $value) {
					
					unlink('./'.$value);

				}
				unset($_SESSION['goods_img']);
				echo 1; die;
			}


		}

		//删除指定的下标的图片
		public function delGoodsImg(){

			if(input()){
		
				unlink('./'.$_SESSION['goods_img'][input('index')]);

				unset($_SESSION['goods_img'][input('index')]);

				//让下标重新从0排序
				$_SESSION['goods_img'] = array_values($_SESSION['goods_img']);

				echo 1; die;
			}

		}

		//删除商品封面图片
		public function delGoodsCover(){

			// if(input()){
		
				unlink('./'.$_SESSION['goods_cover']);

				unset($_SESSION['goods_cover']);

				echo 1; die;
			// }

		}

	}



?>