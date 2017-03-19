<?php
namespace app\admin\controller;
use think\Controller;
use think\Db;
// use app\admin\model\User_list;
class index extends Controller
{
	public function index()
	{
		return $this->fetch();
	}
	public function main()
	{
		$this->redirect('main/index');
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
				 ->where('username','=',$data['username'])
				 ->find();	 
			if($result['password']==MD5($data['password'])){
				//手动验证
				if(captcha_check($data['checkcode'])){
					// dump($data['checkcode']);
				  return $status=1;	
				};
			}else{
				//dump("登录失败");
				 return $status=0;
			}		 
			

		}
		 
	
		//$this->redirect('main/index');
		//return $this->fetch('main/main');
		
	}

}
