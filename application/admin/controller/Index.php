<?php
namespace app\admin\controller;
use think\Controller;
use think\Db;
// use app\admin\model\User_list;
class index extends Controller
{
	public function index()
	{	
		// if (!empty($_POST)) {
		// 	dump('45');
		// }
		// if (isset($_POST)) {
		// 	dump('45');
		// }
	
		return $this->fetch();
	}
	public function clearSession()
	{	
		session(null);
		$this->redirect('index');

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
			if($result['username']&&$result['password']==MD5($data['password'])){
					session('username',$data['username']);
					session('password',MD5($data['password']));
				//手动验证
				// if(captcha_check($data['checkcode'])){
				// 	session('username',$data['username']);
				// 	session('password',MD5($data['password']));
				
				// 	return $status=1;	
				// };
				return $status=1;
			}else{
					//dump("登录失败");
					return $status=0;
			}		 
			

		}
		 
	
		//$this->redirect('main/index');
		//return $this->fetch('main/main');
		
	}

}
