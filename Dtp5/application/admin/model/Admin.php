<?php

	/*
		管理员表模型层
	 */	
	namespace app\admin\model;

	use think\Model;

	use think\model\concern\SoftDelete; //引入软删除类

	class Admin extends Model{

		//主键字段
		protected $pk = 'id';

		//开启自动写入时间戳字段（字段不是int类型）
		//protected $autoWriteTimestamp = 'datetime';
		//protected $autoWriteTimestamp = true;

		public function group(){

			/*
			第一个参数为权限组表，第二个参数为用户表，第三个参数为中间表字段，第四个参数为用户id
			 */
			return $this -> belongsToMany('AuthGroup', 'AuthGroupAccess', 'group_id', 'uid');



		}

		//软删除
		use SoftDelete;
		protected $deleteTime = 'delete_time';

		//模型初始化，该方法相当于类的构造方法
		protected static function init(){


		}

		/*
		//获取数据表状态字段并转换成中文
		public function getStatusAttr($status){

			//echo $status;
			return $status == 1 ? '已审核' : '待审核';

		}

		//获取数据表加入时间字段并转换成普通格式
		public function getDateAttr($date){

			return date('Y年m月d日 H时i分s秒', $date);

		}

		//将要添加的数据的username字段转换成小写
		public function setUsernameAttr($username){

			return strtolower($username);

		}

		//类型转换
		protected $type = [

			'date_time' => 'timestamp:Y/m/d',

		];

		//数据自动完成
		protected $auto = ['status' => 1, 'date_time'];

		//设置数据表date_time字段为时间戳格式
		public function setDatetimeAttr(){

			return time();

		}
		*/

	}		


?>