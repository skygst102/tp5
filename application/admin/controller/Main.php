<?php
namespace app\admin\controller;
use think\Controller;
use think\Db;
class Main extends CommonAction 
{

	public function index ()
	{
		
		return $this->fetch();
	}
	public function right ()
	{
		//$this->redirect('main/light');//重定向
		return $this->fetch('main/right');
	}
}
