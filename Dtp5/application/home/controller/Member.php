<?php

	/*
		会员控制层
	*/

	namespace app\home\controller;

	use think\Controller;

	class Member extends Common{

		public function login(){

			if(input()){
				
				$member = input();

				$memberInfo = db('member') -> where($member) -> find();
				if($memberInfo){

					$_SESSION['member'] = $memberInfo;

					//print_r($_SESSION['member']); die;

					$this -> success('登录成功', 'selfInfo');
				}else{
					$this -> error('登录失败');
				}

			}

			return view();

		}

		public function selfInfo(){



			return view();

		}



	}


?>