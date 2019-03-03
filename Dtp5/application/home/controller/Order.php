<?php

	namespace app\home\controller;

	use think\Controller;

	use Omnipay\Omnipay;

	use AlipayTradePagePayContentBuilder\AlipayTradePagePayContentBuilder;

	use AlipayTradeService\AlipayTradeService;

	require "../extend/alipay/config.php";
	require "../extend/alipay/AlipayTradeService.php";
	require "../extend/alipay/AlipayTradePagePayContentBuilder.php";

	class Order extends Common{

		//订单商品列表
		public function orderList(){

			$member_id = $_SESSION['member']['id'];

			$orderList = model('admin/order') -> where('member_id', $member_id) -> select() -> toArray();

			//print_r($orderList); die;
			$this -> assign('orderList', $orderList);

			//print_r($orderList); die;
			return view();
		}


		//生成订单
		public function createOrder(){

			if(input()){

				// echo $cartId = implode(',', input('items/a')); die;
				$cart['member_id'] = $_SESSION['member']['id'];
				$cart['id'] = input('items/a');
				$cart['status'] = 0;

				// print_r($cart); die;
				$cartData = db('cart') -> where($cart) -> select();

				$order['member_id'] = $_SESSION['member']['id'];
				$order['order_sn'] = date('YmdHis', time()).mt_rand(100000, 999999);
				$order['order_amount'] = input('totalPrice');
				$order['order_details'] = json_encode($cartData);

				$row = db('order') -> insert($order);

				if($row > 0){

					db('cart') -> where($cart) ->setField('status', 1);

					// /**
					//  * 支付宝即时到帐网关设置方式(composer依赖库)
					//  */
					// $gateway = Omnipay::create('Alipay_LegacyExpress'); //设置支付宝接口类型（此处为即时到帐）

					// // $gateway->setSellerEmail('the_seller_email');
					// $gateway->setSellerId('2088021389192571');
					// $gateway->setPartner('2088021389192571');
					// $gateway->setKey('xes67fpmr9s9la5ozcv3lks364sng4kg'); //For MD5 sign type
					// //$gateway->setPrivateKey('the_rsa_sign_key'); //For RSA sign type
					// //$gateway->setAlipayPublicKey('the_alipay_public_key'); //For RSA sign type
					// $gateway->setReturnUrl('https://www.example.com/return');
					// $gateway->setNotifyUrl('https://www.example.com/notify');

					// /**
					// * 发起购买支付请求
					// */
					// $request = $gateway->purchase([
					//   'out_trade_no' => $order['order_sn'], //订单编号
					//   'subject'      => 'Alipay test', //订单名称
					//   'total_fee'    => $order['order_amount'], //订单总额
					// ]);

					// /**
					//  * @var LegacyExpressPurchaseResponse $response
					//  */
					// $response = $request->send();

					// $redirectUrl = $response->getRedirectUrl();
					// //or 
					// $response->redirect();
					

					/*
						支付宝官方接口方式
					 */
					//商户订单号，商户网站订单系统中唯一订单号，必填
				    $out_trade_no = trim($order['order_sn']);

				    //订单名称，必填
				    $subject = trim('Alipay test');

				    //付款金额，必填
				    $total_amount = trim($order['order_amount']);

				    //商品描述，可空
				    $body = trim($order['order_details']);

				    //构造参数
					$payRequestBuilder = new AlipayTradePagePayContentBuilder();
					$payRequestBuilder->setBody($body);
					$payRequestBuilder->setSubject($subject);
					$payRequestBuilder->setTotalAmount($total_amount);
					$payRequestBuilder->setOutTradeNo($out_trade_no);

					$aop = new AlipayTradeService($GLOBALS['config']);

					/**
					 * pagePay 电脑网站支付请求
					 * @param $builder 业务参数，使用buildmodel中的对象生成。
					 * @param $return_url 同步跳转地址，公网可以访问
					 * @param $notify_url 异步通知地址，公网可以访问
					 * @return $response 支付宝返回的信息
				 	*/
					$response = $aop->pagePay($payRequestBuilder,$GLOBALS['config']['return_url'],$GLOBALS['config']['notify_url']);

					//输出表单
					var_dump($response);die;


				}

			}

		}


	}


?>