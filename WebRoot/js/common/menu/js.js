

$('#top_right_car').mouseover(function(){
	$("#top_right_car>a").css('color','#2ba036');
	$("#top_right_car>a").css('background','url(/360Mall/images/common/menu/top_car2.png) no-repeat');
	$("#top_right_car").css('background','#fff');
	$("#top_box_car_liebiao>a").css('color','#2BA036');
})

$('#top_right_car').mouseout(function(){
	$("#top_right_car>a").css('color','#bfbfbf');
	$("#top_right_car>a").css('background','url(/360Mall/images/common/menu/top_car.png) no-repeat');
	$("#top_right_car").css('background','#4a4a4a');
})

$('li.sub').hover(function() {
	/* Stuff to do when the mouse enters the element */
	$(this).children('.nav_sub').css('display','block').animate({
		height:230,
		opacity:1},
		300)
}, function() {
	/* Stuff to do when the mouse leaves the element */
	$(this).children('.nav_sub').animate({
		height:0,
		opacity:0},
		300,function(){
			$(this).css('display','none');
		})	
});


$('#keyword').on('click','li', function(event) {
	$('#inreseach').val($(this).html());	
	$('#keyword').hide();
});

$('.nav_sub div dl').on('click','dt',function(e){
	e.preventDefault();
	var a=$(this).children('a');
	if	(a){
		var pid=a.attr('href');
		pid=pid.substr(4,4);
		sessionStorage.setItem('pid',pid);
		open('../360details/index.html',"_self");
	}
})

$('.nav_sub div dl').on('click','dd',function(e){
	e.preventDefault();
	var a=$(this).children('a');
	if	(a){
		var pid=a.attr('href');
		pid=pid.substr(4,4);
		sessionStorage.setItem('pid',pid);
		open('../360details/index.html',"_self");
	}
})
$('#cart').on('click',logined);

function logined(e){
	e.preventDefault();
	var uname=sessionStorage.getItem('uname');
	if(uname){
		var pcount=$('#pcount').val();
		sessionStorage.setItem('pcount',pcount);
		open('../360shoppingCar/index.html',"_self");
	}else{
		alert('对不起,您还没有登录,请先登录!');
		open('../360login/360login.html',"_self");
	}
}
