<?php

//后台模块自定义配置
return [

	'sms' => [

		/**
		 * url前半部分
		 */
		'BASE_URL' => "https://api.miaodiyun.com/20150822/",

		/**
		 * url中的accountSid。如果接口验证级别是主账户则传网站“个人中心”页面的“账户ID”，
		 */
		'ACCOUNT_SID' => "98eb86c3addf4f5ea919fe60e3977e27", // 主账户
		'AUTH_TOKEN' => "19ffaf0d569c4d4db0ffef62365c353f",

		/**
		 * 请求的内容类型，application/x-www-form-urlencoded
		 */
		'CONTENT_TYPE' => "application/x-www-form-urlencoded",

		/**
		 * 期望服务器响应的内容类型，可以是application/json或application/xml
		 */
		'ACCEPT' => "application/json",

	]

];	


?>