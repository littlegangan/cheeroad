<?php

	namespace app\admin\validate;
 
	use think\Validate;

	class Admin extends Validate{

		//是否开启批量验证
		//protected $batchValidate = true;

		protected $rule =   [
	        // 'username'  => 'require|max:25|myValidate:10',
	        'username'  => 'require|max:25',
	        'password'  => 'require',
	        'age'   => 'number|between:1,120',
	        'email' => 'email',
	        '__token__' => 'token', //令牌隐藏域验证   
    	];
    
    	protected $message  =   [
	        'username.require' => '登录名不能为空',
	        'password.require' => '密码不能为空',
	        'username.max'     => '名称最多不能超过25个字符',
	        'age.number'   => '年龄必须是数字',
	        'age.between'  => '年龄只能在1-120之间',
	        'email'        => '邮箱格式错误',
	        '__token__.token'      => '请勿重复提交相同数据',    
	    ];

	    //自定义验证规则 
	    protected function myValidate($value, $rule, $data=[]){

	    	echo $value; //指定验证的内容（username）
	    	echo '<br>';
	    	echo $rule;	//自定义规则
	    	echo '<br>';
	    	print_r($data);die; //表单提交过来的所有内容


	    }

	    //创建验证场景
	    protected $scene = [

	    	'add' => ['username', 'password'],
	    	'edit' => ['username', 'email'],

	    ];


	}

?>