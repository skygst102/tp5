<?php
namespace app\admin\controller;
use think\Controller;
use think\Db;
use app\admin\model\User_list;
class index extends Controller
{
	public function index()
	{
		return $this->fetch();
	}
	/*登陆验证*/
	public function check()
	{
		
		if($_POST){
			$data=array(
				"username" => input('post.username'),
				"password" => input('post.password'),
				"checkcode"=> input('post.checkcode')
			);
			$result=Db::name("user_list")
					 ->where('username',$data['username'])
					 ->find();
					 
			$user = new User_list;
			$user['tel']='12332112211';
			if ($user->save()) {
				return '用户[ ' . $user->tel . ' ]新增成功';
				} else {
				return $user->getError();
			}
			 dump($result['password']);		 
			/*if($result['password']==MD5($data['password'])){
				 dump($result['password']);
			};		 
			
			//手动验证
			if(!captcha_check($captcha)){
			 //验证失败
			};*/
	
		}
		 
	
		//$this->redirect('main/index');
		//return $this->fetch('main/main');
		
	}
	public function main()
	{
		$this->redirect('main/main');
		//return $this->fetch('main/main');
		
	}
}
