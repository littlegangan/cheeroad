<?php

	namespace app\admin\controller;

	use think\Controller;

	use think\facade\Session;
	//use think\facade\Request;
	use app\admin\validate\admin as AdminValidate;

	use app\admin\model\Admin as AdminModel; //引用模型层

	class Admin extends Common{

		//管理员列表
		public function lists(){

			//$adminList = db('admin') -> select();

			$adminList = db('admin') -> order('id desc') -> paginate(5); //每页显示5条记录

			//计算总页码数并进行渲染
			$pages = $adminList -> render();

			//echo $pages; die;

			//print_r($adminList -> toArray());die;

			$this -> assign('adminList', $adminList -> toArray());

			$this -> assign('pages', $pages);

			return view();

		}

		//添加管理员
		public function add(){

			// if(request()->isPost()){

			// 	//删除指定下标
			// 	$post = Request::except('cpwd, code', 'post');

				// $arr['date'] = time(); //获取当前时间
				//返回添加成功后的数据id
				// $id = ad('admin') -> insertGetId($post);

			// }

			if(input()){

				//调用验证器类
				$adminValidate = new AdminValidate;
				//$adminValidate = new \app\admin\validate\admin;
				//var_dump($adminValidate);die;

				//批量验证
				// if(!$adminValidate -> batch() -> check(input())){
				//验证场景
				//if(!$adminValidate -> scene('edit') -> check(input())){
				if(!$adminValidate ->batch() -> check(input())){

					dump($adminValidate -> getError());die;

				}else{

					$arr['username'] = input('username');
					$arr['password'] = md5(input('password'));
					$arr['sex'] = input('sex');
					$arr['tel'] = input('tel');
					$arr['email'] = input('email');
					$arr['role'] = input('role');
					$arr['status'] = input('status');
					//$arr['date'] = input('date');
					$arr['date'] = time();

					$row = db('admin') -> insert($arr);
					if($row > 0){
						$this -> success('添加成功', 'list');die;
					}else{
						$this -> error('添加失败');die;
					}
				}

			}
			return view();

		}

		//弹出层方式添加管理员
		public function popAdd(){

			if(input()){

				//调用验证器类
				$adminValidate = new AdminValidate;

				if(!$adminValidate -> batch() -> check(input())){

					dump($adminValidate -> getError());die;

				}else{

					$arr['username'] = input('username');
					$arr['password'] = md5(input('password'));
					$arr['sex'] = input('sex');
					$arr['tel'] = input('tel');
					$arr['email'] = input('email');
					$arr['role'] = input('role');
					$arr['status'] = input('status');
					//$arr['date'] = input('date');
					$arr['date'] = time(); //获取当前时间
					
					$row = db('admin') -> insert($arr);
					ob_clean();
					print_r($row);die;
					// if($row > 0){
					// 	$this -> success('添加成功');die;
					// }else{
					// 	$this -> error('添加失败');die;
					// }
				}

			}

			return view();


		}

		//编辑管理员信息
		public function edit(){

			//先在编辑页面中显示原有的信息
			if(input('id')){

				$data = db('admin') -> where('id', input('id')) -> select();
				//print_r($data); die;
				$this -> assign('data', $data);

			}

			//如果编辑提交过来的管理员登录名不为空，则进入下列步骤
			if(input('username')){

				//提交的新密码不为空
				if(input('newPassword')){
					//先查询数据库的信息
					$info = db('admin') -> where('id', input('id')) -> select();

					$oldPassword = input('oldPassword'); //提交过来的原密码
					
					//将数据库中的密码和提交过来的原密码进行比对
					if(md5($oldPassword) == $info[0]['password']){

						$row = db('admin') -> where('id', input('id')) 
								-> update([

									'username' => input('username'),
									'password' => md5(input('password')),
									'tel' 	   => input('tel'),
									'email'    => input('email'),
									'role'     => input('role'),
									'status'   => input('status')

								]);

						if($row >= 0){

							$this -> success('编辑成功', 'list'); die;
						}else{
							$this -> error('编辑失败'); die;
						}

					}
				}

				$row = db('admin') -> where('id', input('id')) 
								-> update([

									'username' => input('username'),
									'tel' 	   => input('tel'),
									'email'    => input('email'),
									'role'     => input('role'),
									'status'   => input('status')

								]);

						if($row >= 0){

							$this -> success('编辑成功', 'list'); die;

						}else{

							$this -> error('编辑失败'); die;
						}
				

			}

			return view();

		}

		//弹出层方式编辑管理员信息
		public function popEdit(){


			//先在编辑页面中显示原有的信息
			if(input('id')){

				$data = db('admin') -> where('id', input('id')) -> select();
				//print_r($data); die;
				$this -> assign('data', $data);

			}

			//如果编辑提交过来的管理员登录名不为空，则进入下列步骤
			if(input('username')){
				//print_r(input()); die;
				//提交的新密码不为空
				if(input('newPassword')){
					//先查询数据库的信息
					$info = db('admin') -> where('id', input('id')) -> select();

					$oldPassword = input('oldPassword'); //提交过来的原密码
					
					//将数据库中的密码和提交过来的原密码进行比对
					if(md5($oldPassword) == $info[0]['password']){

						$row = db('admin') -> where('id', input('id')) 
								-> update([

									'username' => input('username'),
									'password' => md5(input('password')),
									'tel' 	   => input('tel'),
									'email'    => input('email'),
									'role'     => input('role'),
									'status'   => input('status')

								]);

						ob_clean();
						print_r($row); die;

					}
				 }

				 $row = db('admin') -> where('id', input('id')) 
								-> update([

									'username' => input('username'),
									'tel' 	   => input('tel'),
									'email'    => input('email'),
									'role'     => input('role'),
									'status'   => input('status')

								]);

				 ob_clean();
				 print_r($row); die;
			 }



			return view();


		}




		//删除管理员
		public function del(){

			if(input('id')){

				$row = db('admin') -> where('id', input('id')) -> delete();

				print_r($row);die;

				// if($row > 0){

				// 	$this -> success('删除成功', 'list'); die;

				// }else{

				// 	$this -> error('删除失败');die;
				// }

			}
			

		}

		//搜索管理员
		public function search(){

			//echo input('username'); die;
			$username = input('username');

			$result = db('admin') -> where('username', 'like', "%$username%") -> select();

			//print_r($result);die;

			$strHtml = '';
			foreach ($result as $key => $value) {
				
				$strHtml .= '<tr>';
			    $strHtml .= '<td>'.$value['username'].'</td>';
			    $strHtml .= '<td>'.($value['sex']==1?'男':'女').'</td>';
			    $strHtml .= '<td>'.$value['tel'].'</td>';
			    $strHtml .= '<td>'.$value['email'].'</td>';
			    $strHtml .= '<td>'.($value['role']==1?'超级管理员':'管理员').'</td>';
			    $strHtml .= '<td>'.($value['status']==1?'<button class="layui-btn layui-btn-xs">已审核</button>':'<button class="layui-btn layui-btn-primary layui-btn-xs">未审核</button>').'</td>';
			    $strHtml .= '<td>'.$value['date'].'</td>';
			    $strHtml .= '<td>'; 

				// $strHtml .=	'<a href="'.url('edit', ['id' => $value['id']]).'" class="layui-btn layui-btn-normal layui-btn-xs" lay-event="edit"><i class="layui-icon layui-icon-edit"></i>编辑</a>';

			    $strHtml .=	'<a class="layui-btn layui-btn-normal layui-btn-xs" lay-event="edit" value="'.$value['id'].'" onclick="editByPop('.$value['id'].')"><i class="layui-icon layui-icon-edit"></i>编辑</a>';


				$strHtml .=	'<a class="layui-btn layui-btn-danger '.($value['role']==1?'layui-btn-disabled':'').' layui-btn-xs" value="'.$value['id'].'" '.($value['role']==1?'':'onclick="confirmDel('.$value['id'].')"').' lay-event="del"><i class="layui-icon layui-icon-delete"></i>删除</a>';

			    $strHtml .= '</td>';
			   	$strHtml .= '</tr>';

			}
			echo $strHtml;


		}

		//后台登录
		public function login(){
			
			
			if(input()){

				//第一个参数为管理员id, 第二个参数为对应模型层方法名
				//$data = adminModel::get(1, 'group') -> toArray(); 
				// 查询多组表关联的方式
				$data = adminModel::with(['group']) -> where(['username' => input('username'), 'password' => md5(input('password'))]) -> find() -> toArray();
				

				// $adminModel = new AdminModel;
				// $data = $adminModel -> with(['group']) -> find(1) -> toArray();
				// 对象数组
				// $data = $adminModel -> with(['group']) -> find(1); 
				//print_r($data); die;
				// 网站验证码
				// if(!captcha_check(input('validateCode'))){

				// 	$this -> error('验证失败', 'login');die;

				// }

				//print_r(input());die;

				/*
				$adminLogin = db('admin') -> where(['username' => input('username'), 'password' => md5(input('password'))]) -> find();

				if($adminLogin){

					session('username', $adminLogin['username']);
					session('password', $adminLogin['password']);
					session('id', $adminLogin['id']);
					$this -> success('登录成功', 'index/index');die;

				}else{

					$this -> error('登录失败');die;

				}
				*/
			
				if($data){
					
					$_SESSION['admin']['usename'] = $data['username'];
					$data['group'][0]['rules'] = explode(',', $data['group'][0]['rules']);
					session('adminInfo', $data);
					//print_r(session('adminInfo')); die;
					//传递用户具有的权限组
					// print_r($_SESSION); die;
					$this -> assign('rules', session('adminInfo.group')[0]['rules']);
					$this -> success('登录成功', 'index/index');die;

				}else{

					$this -> error('登录失败'); die;
				}


			}

			return view();

		}

		//后台退出
		public function Out(){

			if(!empty($_SESSION)){
				session_destroy();

			}
			$this -> redirect('tp5/public/index.php/admin/admin/login');die;

		}

		//模型层测试方法
		public function test(){

			$adminModel = new AdminModel;

			//var_dump($adminModel);

			//实例化模型对象赋值
			// $adminModel -> username = 'vvv';
			// $adminModel -> password = '111';
			// $adminModel -> email = 'ddd';

			//数组方式添加数据
			$data['username'] = 'rrr';
			$data['password'] = '112';
			$data['confirm'] = '113';
			$data['email'] = '5555';

			//手动过滤非数据表的字段
			//echo $adminModel -> allowField(true) -> save($data);

			//手动过滤不想插入数据库中的表的字段

			// echo $adminModel -> allowField(['username', 'email']) -> save($data);

			//添加多条数据
			// $adminData = [

			// 	['username' => 'aaa', 'password' => '333'],
			// 	['username' => 'ooo', 'password' => '888'],

			// ];
			//有false表示为添加带id字段的数据，没有false为更新操作
			// $adminModel -> saveAll($adminData, false);

			//静态方法添加数据
			//$adminModel::create($data);

			//更新数据
			//$adminModel -> save(['username' => 'ggg', 'password' => '888'], ['id' => 84]);

			// $adminModel = AdminModel::where('email', 5555) -> where('username', 'ggg') -> find();

			// $adminModel -> username = 'mmm';
			// $adminModel -> save();

			//删除
			//AdminModel::where('username', 'rrr') -> delete();

			//查询
			// $list = AdminModel::all('66, 67, 68');

			// foreach ($list as $key => $value) {
				
			// 	echo $value -> username;
			// 	echo '&nbsp;';
			// 	echo $value -> password;
			// 	echo '<br>';

			// }

			//获取器
			// $adminData = AdminModel::get(66);
			
			// //echo $adminData -> status;
			// print_r($adminData); //对象数组
			// print_r($adminData -> toArray()); //数组


			// $adminData = $adminModel -> where('id', 85) -> find();
			
			// echo $adminData -> date;

			//修改器
			// $adminModel -> username = 'THINKPHP';
			// $adminModel -> save();
			// echo $adminModel -> username;

			
			//$deleteData = AdminModel::get(66);
			//软删除
			// $deleteData -> delete();

			// $list = AdminModel::select();

			// print_r($list -> toArray());
			// $data = AdminModel::onlyTrashed() -> find(); //查询一条软删除数据

			// print_r($data -> toArray());

			//真删除
			// $deleteData = AdminModel::get(89);
			// $deleteData -> delete(true);

			//使用model助手函数实例化模型层
			// $data['date_time'] = '2018-01-01';
			// //$admin = model('admin') -> save($data);
			// $admin = model('admin') -> get(93);
			// print_r($data['date_time']);

			//数据自动完成
			model('admin') -> save();

			die;

		}

	}


?>