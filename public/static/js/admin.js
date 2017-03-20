$(function(){	

//弹出框

  $(".click").click(function(){
  $(".tip").fadeIn(200);
  });
  
  $(".tiptop a").click(function(){
	  $(".tip").fadeOut(200);
	});

  $(".sure").click(function(){
	  $(".tip").fadeOut(100);
	});

  $(".cancel").click(function(){
	  $(".tip").fadeOut(100);
	});



//分页
 $('#callBackPager').extendPagination({

            totalCount:50,

            showPage: 5,

            limit: 10,

            callback: function (curr, limit, totalCount) {

               // createTable(curr, limit, totalCount);

            }
 });



alert('11')

 	
  



});


