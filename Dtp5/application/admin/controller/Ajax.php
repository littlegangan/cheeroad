<?php

	namespace app\admin\controller;

	use houdunwang\arr\Arr;


	/**
	 * 公共Ajax控制器
	 */
	class Ajax {
		
		//获取子级导航
		function getChildNav(){

			$id = input('id');

			$data = db('nav') -> where("pid = $id") -> select();

			return json($data); //== json_encode($data);
		}


		//查询顶部导航对应的子级导航数据
		function getLeftNav(){

			//echo input('id');die;
			$arr['module'] = 'admin';
			$arr['is_show'] = 1;
			$data = db('nav') -> where($arr) -> select();

			$pid = input('pid');

			//$data = db('nav') -> where('pid', $pid) -> select();
			$data = Arr::channelLevel($data, $pid, "", 'id', 'pid');
			//print_r($data); die;
			//获取用户权限组
			$rules = session('adminInfo.group')[0]['rules'];


			$strHtml = '';
			foreach ($data as $value) {
				if(in_array($value['id'], $rules)){
	                $strHtml .= '<li class="layui-nav-item layui-nav-itemed">';
	                $strHtml .= '<a class="" href="javascript:;">'.$value['title'].'<span class="layui-nav-more"></span></a>';
	                $strHtml .= '<dl class="layui-nav-child">';
	                foreach ($value['_data'] as $val) {
	                	if(in_array($value['id'], $rules)){

	                		// $strHtml .= '<dd><a href="'.url($val['url']).'">'.$val['title'].'</a></dd>';
	                		$strHtml .= '<dd><a href="'.url($val['url'], ['pid' => $pid]).'">'.$val['title'].'</a></dd>';
	                		
	                	}
	                }
	                           
	                $strHtml .= '</dl>';
	                $strHtml .= '</li>';
            	}
			}
			echo $strHtml; die;

		}


		function sendSms(){

			//echo input('tel') == 18390871932 ? 1 : 0;

			//print_r(config('config.sms')); die;
			$httpUtil = new \sms\httpUtil(config('config.sms'));
			
			/**
			 * url中{function}/{operation}?部分
			 */
			$funAndOperate = "industrySMS/sendSMS";
			//var_dump($httpUtil);die;

			// 参数详述请参考http://miaodiyun.com/https-xinxichaxun.html

			// 生成body
			$body = $httpUtil -> createBasicAuthData();
			// 在基本认证参数的基础上添加短信内容和发送目标号码的参数
			$mobileCode = mt_rand(100000, 999999);

			$body['smsContent'] = "【喵喵科技】尊敬的用户，您的验证码为".$mobileCode."，请于1分钟内输入，如非本人操作，请忽略此短信。";
			$body['to'] = input('tel'); //要发送的手机号码

			// 提交请求
			$result = $httpUtil -> post($funAndOperate, $body);
			// echo("<br/>result:<br/><br/>");
			//将返回的json数据转换成数组类型
			//var_dump($result);die;
			$result = json_decode($result, true);
			//print_r($result['respCode']); die;
			echo $result['respCode'] == '00000' ? 1 : 0;

		}

		//品牌图片上传
		function upload(){

			// 获取表单上传文件 例如上传了001.jpg
		    $file = request()->file('file'); //图片下标

		    $filePath = 'uploads/brand/';
		    // 移动到框架应用根目录/uploads/ 目录下
		    $info = $file->move($filePath);

		    if($info){
		        // 成功上传后 获取上传信息
		        // 输出 jpg
		        // echo $info->getExtension();
		        // 输出 20160820/42a79759f284b767dfcb2a0197904287.jpg
		        // echo $info->getSaveName();
		        // 输出 42a79759f284b767dfcb2a0197904287.jpg
		        // echo $info->getFilename(); 

		    	//组装最终上传路径
		    	$savePath = $filePath.$info->getSaveName();
		    	//方便取到图片上传路径
		    	session('savePath', $savePath);
		    	echo 1; die;

		    }else{
		        // 上传失败获取错误信息
		        echo $file->getError(); die;
		    }

		}

		//商品相册图片上传
		function goodsImgUpload(){

			// 获取表单上传文件 例如上传了001.jpg
		    $file = request()->file('file'); //图片下标

		    $filePath = 'uploads/goods/';
		    // 移动到框架应用根目录/uploads/ 目录下
		    $info = $file->move($filePath);

		    if($info){
		        // 成功上传后 获取上传信息
		        // 输出 jpg
		        // echo $info->getExtension();
		        // 输出 20160820/42a79759f284b767dfcb2a0197904287.jpg
		        // echo $info->getSaveName();
		        // 输出 42a79759f284b767dfcb2a0197904287.jpg
		        // echo $info->getFilename(); 

		    	//组装最终上传路径
		    	$savePath = $filePath.$info->getSaveName();
		    	//方便取到图片上传路径
		    	//session('img_path', $savePath);
		    	session_start();
		    	
		    	$_SESSION['goods_img'][] = $savePath;
		    	
		    	echo 1; die;

		    }else{
		        // 上传失败获取错误信息
		        echo $file->getError(); die;
		        
		    }

		}

		//商品封面图片上传
		function goodsCoverUpload(){

			// 获取表单上传文件 例如上传了001.jpg
		    $file = request()->file('file'); //图片下标

		    $filePath = 'uploads/goodscover/';
		    // 移动到框架应用根目录/uploads/ 目录下
		    $info = $file->move($filePath);

		    if($info){
		        // 成功上传后 获取上传信息
		        // 输出 jpg
		        // echo $info->getExtension();
		        // 输出 20160820/42a79759f284b767dfcb2a0197904287.jpg
		        // echo $info->getSaveName();
		        // 输出 42a79759f284b767dfcb2a0197904287.jpg
		        // echo $info->getFilename(); 

		    	//组装最终上传路径
		    	$savePath = $filePath.$info->getSaveName();
		    	//方便取到图片上传路径
		    	//session('img_path', $savePath);
		    	session_start();
		    	
		    	$_SESSION['goods_cover'] = $savePath;
		    	//print_r($_SESSION['goods_cover']); die;
		    	echo 1; die;

		    }else{
		        // 上传失败获取错误信息
		        echo $file->getError(); die;
		        
		    }

		}




		// //删除上传的商品图片
		// public function delGoodsImg(){

		// 	if(input()){

		// 		unlink('./'.$_SESSION['goods_img'][input('index')]);

		// 		unset($_SESSION['goods_img'][input('index')]);

		// 		//让下标重新从0排序
		// 		$_SESSION['goods_img'] = array_values($_SESSION['goods_img']);

		// 		echo 1; die;
		// 	}

		// }

		//获取对应的商品模型规格
		public function getGoodsSpec(){

			if(input()){

				//print_r(input()); die;
				$goodsSpec = model('GoodsSpec') -> with('goodsSpecItem') -> where(input()) -> select() -> toArray();

				//print_r($goodsSpec); die;
				//json() == json_encode()
				return json($goodsSpec);
				

			}

		}

		//重组商品规格项，计算商品价格
		public function reSpecItem(){

			if(input()){

				//print_r(input()); die;
				//格式/a强制转换为数组类型
				$specItemName = input('spec_item_name/a');
				$specItemId = input('spec_item_id/a');

				$data['specItemName'] = $this -> CartesianProduct($specItemName);
				$data['specItemId'] = $this -> CartesianProduct($specItemId);

				return json($data);
			}

		}

		//商品规格笛卡尔乘积组装数组
		function CartesianProduct($sets){
 
			 // 保存结果
			 $result = array();
			 
			 // 循环遍历集合数据
			 for($i=0,$count=count($sets); $i<$count-1; $i++){
			 
			 // 初始化
			 if($i==0){
			  $result = $sets[$i];
			 }
			 
			 // 保存临时数据
			 $tmp = array();
			 
			 // 结果与下一个集合计算笛卡尔积
			 foreach($result as $res){
			  foreach($sets[$i+1] as $set){
			  $tmp[] = $res.$set;
			  }
			 }
			 
			 // 将笛卡尔积写入结果
			 $result = $tmp;
			 
			 }
			 
			 return $result;
			 
		}

		//商品分类联动选择框显示
		public function category(){

			if(input()){

				$childCateList = db('category') -> where('pid', input('pid')) -> select();
				return json($childCateList);
				
			}


		}


	}


?>