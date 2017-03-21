<?php
namespace app\admin\controller;
use think\Controller;
use think\Db;
class Main extends Common
{

	public function index ()
	{
		return $this->fetch();
	}
	public function right ()
	{
		return $this->fetch('main/right');
	}
}
