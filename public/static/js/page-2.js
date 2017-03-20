function Page(o){
	// <li class="disabled"><span>...</span></li><li class="prev"><span>上页</span></li><li class="active"><span>1</span></li>

	var maxPage=o.maxPage;
	var eachPage=o.eachPage;
	
	
	
	var nowPageInf;
	var changeCon=$('nav.page div.inf span');
	changeCon.eq(1).html('共'+maxPage+'页，');
	changeCon.eq(2).html('每页'+eachPage+'条');

	var showPage=6; //生成分页个数
	
	(function(){//分页生成
		var pageIns='';
		var pageHtml='<div class="inf"><i><span>第1页，</span><span>共10页，</span><span>每页十条</span></i></div>\
		<ul class="pagination pagination-sm"></ul>';
		$('nav.page').html(pageHtml);
		for (var i = 0; i < showPage+2; i++) {
			pageIns+='<li><span>'+i+'</span></li>';
		};
		$('nav.page ul').append(pageIns);
		$('nav.page ul li span').eq(0).text('prev');
		$('nav.page ul li span').eq(-1).text('next');
		$('nav.page ul li span').eq(-2).text(maxPage);

		if (maxPage>showPage) {

			$('nav.page ul li').eq(-2).before('<li class="disabled"><span>...</span></li>')
		};

		$('nav.page ul li').eq(1).addClass('active');


	})();
	var pageBt=$('nav.page li');
	var next=pageBt.length-1;

	pageBt.each(function(i){
		pageBt.eq(i).click(function(){//点击	
			var e = e || window.event;
            e.stopPropagation ? e.stopPropagation() : (e.cancelBubble=true);

			//var prevInf=pageBt.eq(center-1).text();
			//var nextInf=pageBt.eq(center+1).text();

			nowPageInf=pageBt.eq(i).text();

			if (i!=0&&i!=next) {
			
					newPageInf();
					o.clickFn(nowPageInf);
					init();
					// pageBt.eq(i).siblings().removeClass('active');
					// pageBt.eq(center).addClass('active');
			
					// pageBt.eq(i).siblings().removeClass('active');
					// pageBt.eq(i).addClass('active');

					
				//}
			};

			// if (nowPageInf>maxPage-4) {
			// 	pageBt.eq(0).after(pageBt.eq(ellipsis));
			// }


			if (i==0) {		
				newPageInf();
				nowPageInf=nowPageInf-1;
			
			}
			// else if(i==next&&nextInf<maxPage-3){		
			// 	newPageInf();
			// 	nowPageInf=nowPageInf+1;
			// };
		});
	});

	function init(){
		changeCon.eq(0).html('第'+nowPageInf+'页，');	
	}
	function newPageInf(){//渲染数字
		var newPageInf=nowPageInf-2;
		if (nowPageInf==2) {
			var newPageInf=nowPageInf-1;//初始值

		}else if (nowPageInf==1) {
			var newPageInf=nowPageInf;
		}else{
			var newPageInf=nowPageInf-2;//初始值
		};
		if (nowPageInf>maxPage-3) {
			return false;
		}
		for (var i =1; i < pageBt.length-3; i++) {	
			pageBt.eq(i).find('span').html(newPageInf);
			
			newPageInf++;
		};
	}
};

$(function(){


//分页
Page({
    maxPage:20,
    eachPage:10,
    clickFn:function(nowPageInf){console.log(nowPageInf)}
})

})