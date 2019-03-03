<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2018 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------

Route::get('think', function () {
    return 'hello,ThinkPHP5!';
});

Route::get('hello/:name', 'index/hello');

/*
	创建自定义路由规则
	第一个参数为自定义路径，第二个参数为真实路径
*/

// Route::get('index', 'home/index/index');
//可选参数
// Route::get('index/:param_1/[:param_2]', 'home/index/index');
// Route::get('index/:name$', 'home/index/index');
//只允许post方式
// Route::post('index', 'home/index/index');
//任何方式都可以访问
// Route::rule('index', 'home/index/index', 'get|post');
//隐藏传递参数路由定义？后面的参数就是隐藏参数不会在地址栏显示，隐藏参数必须写在第二个参数的位置
// Route::rule('index', 'home/index/login?c=con&m=model');
//路由参数正则表达式定义
// Route::rule('index/:param', 'home/index/index') -> pattern(['param'=>'[0-9]']);
// 组合路由规则定义
// Route::rule('index/:name---bhtk--:password', 'home/index/index') -> pattern(['name' => '[0-9]+', 'password'=>'[0-9]+']);

// Route::rule('login', 'home/member/login');

return [

];
