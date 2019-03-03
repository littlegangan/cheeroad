<?php

	/*
		中间表模型层
	 */	
	namespace app\admin\model;

	use think\Model;

	use think\Model\Pivot;

	use think\model\concern\SoftDelete; //引入软删除类

	class GroupAccess extends Pivot{

		//主键字段
		protected $pk = 'id';

	}

?>