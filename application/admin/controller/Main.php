<?php
namespace app\admin\controller;
use think\Controller;
use think\Db;
class Main extends Controller
{

	public function index ()
	{
		
		return $this->fetch('main');
	}
	public function right ()
	{
		//$this->redirect('main/light');//重定向
		return $this->fetch('main/right');
	}
}
