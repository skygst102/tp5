<?php
//配置文件
return [
	// 视图输出字符串内容替换
	'view_replace_str' => [
		'__ROOT__' => '',
		'__PUBLIC__' => '/tp5/public/static',
	],
	//验证模块配置
	'captcha'  => [
	    // 验证码字符集合
	    'codeSet'  => '2345678901ABCDEFGHJKLMNPQRTUVWXY', 
	    // 验证码字体大小(px)
	    'fontSize' => 18, 
	    // 是否画混淆曲线
	    'useCurve' => true, 
	     // 验证码图片高度
	    'imageH'   => 35,
	    // 验证码图片宽度
	    'imageW'   => 120, 
	    // 验证码位数
	    'length'   => 4, 
	    // 验证成功后是否重置        
	    'reset'    => true
	],
		
];

// 5.0的fetch和display方法有什么区别？
// 5.0模板渲染提供了 fetch 和 display 两个方法，最常用的是 fetch 方法用于渲染模板文件输出，而
// display 方法则是渲染内容输出。
// // 渲染模板输出
// $this->fetch($template);
// // 渲染内容输出
// $this->display($content);
// 两个方法的共同点是都支持模板或者内容的标签解析。

// 5.0 默认并没有初始化和启动 Session ，而是按需调用，只有在调用 Session 类的时候才会进行初始
// 化，但如果你直接操作 $_SESSION 数组的话，则需要自己手动初始化或者启动 session ，方法如下：
// // 进行session初始化
// Session::init();
// // 或者直接调用
// session_start();
// 为什么无法接收表单数组类型数据？
// 如果你使用框架的 Request 类或者 input 助手函数获取表单数据的话，需要使用变量修饰符 /a 才能正确
// 获取数组类型的数据，例如：
// input('get.data/a');
// Request::instance()->get('data/a');
// 否则，默认会当作字符串接收而报错。
// 但是如果获取完整数据则不需要加上 /a 修饰符，例如：
// input('get./a');
// Request::instance()->get();
// 为什么模型的查询返回的都是对象而不是数组
// 5.0的设计就是 Db 类查询返回数组，模型类查询则返回当前模型的对象实例。 模型采用的是对象化设计，查
// 询的结果是一个对象，你可以进行一些额外的操作，比如调用模型的属性（字段）、 业务方法，同时该模型
// 对象仍然可以当成数组一样操作，例如：
// $user = User::get(10);
// echo $user->email;
// echo $user->name;
// $user->email = 'thinkphp@qq.com';
// $user->save();
// 或者使用数组方式操作
// $user = User::get(10);
// echo $user['email'];
// echo $user['name'];
// $user['email'] = 'thinkphp@qq.com';
// $user->save();
// 为什么 Input 类没有了？
// 为了保持统一的入口，5.0的 Input 类的相关方法已经并入 Request 类， Request 类作为当前的请求对
// 象统一接收和处理，并且需要注意，不要在程序里面手动操作 $_GET 、 $_POST 和 $_REQUEST 等全局变
// A、 常见问题集
// 本文档使用 看云 构建 - 251 -量，这样会导致和Request请求对象的获取不一致。
// 具体使用请参考第七章 请求和响应，或者查看官方的开发手册。
// 原来的模板标签怎么不能用了？
// 5.0版本的模板标签界定符由原来的 <> 更改为 {} ，主要是为了解决很多IDE无法解析导致提示错误的问
// 题，例如：
// 原来的写法
// <volist name="list" id="vo">
// {$vo.id}:{$vo.name}
// </volist>
// 需要改为
// {volist name="list" id="vo"}
// {$vo.id}:{$vo.name}
// {/volist}
// 或者也可以直接修改配置更改标签界定符：
// 'template' => [
// // 模板引擎类型 支持 php think 支持扩展
// 'type' => 'Think',
// // 模板引擎普通标签开始标记
// 'tpl_begin' => '{',
// // 模板引擎普通标签结束标记
// 'tpl_end' => '}',
// // 标签库标签开始标记
// 'taglib_begin' => '<',
// // 标签库标签结束标记
// 'taglib_end' => '>',
// ],
// 5.0模型的 save 方法如何过滤非数据表字段值？
// 3.2模型类的 create 是一个很神奇的方法，实现了数据字段自动过滤，自动验证和自动完成，5.0里面应该
// 如何实现同样的功能？
// 5.0使用模型的 allowField 方法可以在使用 save 方法的时候过滤非数据表字段，例如：
// $user = new User;
// $user->allowField(true)->save($_POST);
// 或者指定字段写入：
// $user = new User;
// $user->allowField(['email','name'])->save($_POST);
// A、 常见问题集
// 本文档使用 看云 构建 - 252 -为什么路由变量用 $_GET 获取不到？
// 5.0版本的变量获取界限有调整，路由变量以及 pathinfo 地址参数是不能使用$_GET方式获取的，例如：
// 注册了下面的路由地址：
// Route::Rule('hello/:name','index/hello');
// 然后，访问下面的URL地址：
// http://serverName/hello/thinkphp/id/8
// 使用 $_GET['name']、 $_GET['id'] 或者 input('get.name') 、 input('get.id')是不能正确获取到变量的，正确的方
// 式是：
// input('name');
// input('id');
// // 或者
// request()->param('name');
// request()->param('id');
// Request类的param方法用于获取当前请求的变量，而get方法是用于获取$_GET变量，而pathinfo地址中
// 的参数是不属于GET变量范畴的。
// 如何关闭未定义变量的错误提示？
// 本着严谨的原则，5.0版本默认情况下会对任何错误（包括警告错误）抛出异常，如果不希望如此严谨的抛出
// 异常，可以在应用公共函数文件中或者应用配置文件中使用 error_reporting 方法设置错误报错级别（请
// 注意，在入口文件中设置是无效的），例如：
// // 设置异常错误报错级别 关闭notice错误
// error_reporting(E_ALL ^ E_NOTICE );
// 如何获取当前的模块、 控制器和操作名
// 5.0版本取消了原来的代表当前模块、 控制器和操作名的常量，如果需要获取这些，可以改成：
// // 当前模块名
// request()->module();
// // 当前控制器名
// request()->controller();
// // 当前操作名
// request()->action();
// 如果需要在模板里面输出，则可以使用：
// A、 常见问题集
// 本文档使用 看云 构建 - 253 -{$Request.module}
// {$Request.controller}
// {$Request.action}
// 如果觉得不方便，也可以自己在模块的公共文件里面重新定义常量后操作。
// 如何让生成的URL地址带上index.php
// 5.0使用url方法生成的URL地址不带index.php，如果你的服务器环境不支持URL重写，那么可以使用下面的方
// 式：
// \think\Url::root('/index.php');
// \think\Url::build('index/hello');
// 就会生成带 index.php 的URL地址了。
// 模型类的 field 属性和 type 属性有什么区别？
// 5.0的模型类 field 属性用于定义模型对应数据表的字段信息（包括字段类型），这里定义的字段类型是数
// 据表的实际字段类型，例如：
// protected $field = [
// 'id' => 'int',
// 'birthday' => 'int',
// 'status' => 'int',
// 'create_time' => 'int',
// 'update_time' => 'int',
// 'nickname', 'email',
// ];
// field 属性必须明确设置数据表所有的字段，字符串类型可以不明确定义类型（例如上面的 nickname 和
// email ）。
// type 属性用于定义数据的自动转换类型，代表的不一定是数据表的字段类型，目前支持的自动转换类型包
// 括integer、 float、 boolean、 timestamp、 datetime、 object、 array、 json和serialize，例如：
// protected $type = [
// 'birthday' => 'timestamp',
// ];
// type 属性只需要定义需要系统自动转换的字段。
// 模型的save方法调用后怎么获取自增主键的值？
// 模型的save方法用于模型对象的保存（包括新增和更新）操作，当新增数据后，返回值不再返回主键，而是
// 统一返回影响的记录数（一般为1或者0），如果需要获取自增主键的值，可以使用下面的方法：
// $user = new User;
// $user->name = 'thinkphp';
// $user->email = 'thinkphp@qq.com';
// A、 常见问题集
// 本文档使用 看云 构建 - 254 -if($user->save()){
// // 获取自增主键的值
// echo $user->id;
// }


// 自动时间戳
// 对于固定的时间戳和时间日期型的字段，比如文章的创建时间、 修改时间等字段，还有比设置类型转换更简
// 单的方法，尤其是所有的数据表统一处理的话，只需要在数据库配置文件中添加设置：
// // 开启自动写入时间戳字段
// 'auto_timestamp' => true,
// 再次访问
// http://tp5.com/user/add
// 会发现系统已经自动写入了 think_user 数据表中的的 create_time 、 update_time 字段，如果自动
// 写入的时间戳字段不是这两个的话，需要修改模型类的属性定义，例如：
// <?php
// namespace app\index\model;
// use think\Model;
// class User extends Model
// {
// // 定义类型转换
// protected $type = [
// 'birthday' => 'timestamp:Y/m/d',
// ];
// // 定义时间戳字段名
// protected $createTime = 'create_at';
// protected $updateTime = 'update_at';
// }
// 如果个别数据表不需要自动写入时间戳字段的话，也可以在模型里面直接关闭