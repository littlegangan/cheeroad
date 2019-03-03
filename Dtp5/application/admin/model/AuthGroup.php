<?php

	/*
		角色表模型层
	 */	
	namespace app\admin\model;

	use think\Model;

	use think\model\concern\SoftDelete; //引入软删除类

	class AuthGroup extends Model{

		//主键字段
		protected $pk = 'id';

	}		


?>