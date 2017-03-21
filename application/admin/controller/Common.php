<?php

namespace app\admin\controller;

use think\Controller;

class Common extends Controller
{
	public function _initialize()
	{	
		if (!session('?username')) {

			$this-> redirect('admin/index/index');
		}
    
	}

	public function _empty ()
	{
	
		// $request = request();
		// echo "当前模块名称是" . $request->module();
		// echo "当前控制器名称是" . $request->controller();
		// echo "当前操作名称是" . $request->action();
		$this->error('新增失败');


		// dump(input(model));
		// $this -> fetch();
	}
}
