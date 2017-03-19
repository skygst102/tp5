<?php
namespace app\home\controller;
use think\Controller;
use think\Db;
class Index extends Controller
{
	public function index(){
		return 'hhhh';
	}

	public function hello()
	{
		
		$data=Db::name('web_info')->find();
		$this->assign('result', $data);
		return $this->fetch();
	}


}