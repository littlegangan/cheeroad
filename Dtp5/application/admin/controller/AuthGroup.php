<?php

	//命名空间
	namespace app\admin\controller;

	//引入thinkphp类文件
	use think\Controller;

	use houdunwang\arr\Arr;

	//角色管理控制层
	class AuthGroup extends Common {

		//角色列表
		public function lists(){

			$list = db('auth_group') -> select();

			$this -> assign('list', $list);

			return view();

		}

		//角色添加
		public function add(){
			
			//判断是否有数据提交
			if(request() -> isPost()){

				$data = input();
				//将权限规则组id字符串转换成数组
				$data['rules'] = implode(',', $data['rules']);
				//print_r($data); die;
				//添加角色
				$row = db('auth_group') -> data($data) -> insert();

				if($row > 0){

					$this -> success('添加角色成功', 'list'); die;

				}else{
					$this -> error('添加角色失败'); die;
				}

			}

			//先查询属于后台模块的数据
			$map['module'] = 'admin';
			$list = db('nav') -> where($map) -> select();
			//分级
			$list = Arr::channelLevel($list, 1, '', 'id', 'pid');
			//print_r($list);die;
			$this -> assign('list', $list);

			return view();

		}

		//角色编辑
		public function edit(){



			//先查询属于后台模块的数据
			$map['module'] = 'admin';
			$list = db('nav') -> where($map) -> select();
			//分级
			$list = Arr::channelLevel($list, 1, '', 'id', 'pid');
			//print_r($list);die;
			$this -> assign('list', $list);
			if(input()){

				//print_r(input('id')); die;
				$data = db('auth_group') -> where('id', input('id')) -> find();
				//print_r($data); die;
				//将权限组id字符串转换成数组
				$data['rules'] = explode(',', $data['rules']);
				//print_r($data); die;
				$this -> assign('data', $data);
			}

			return view();

		}

		//角色删除
		public function del(){



		}


	}

?>