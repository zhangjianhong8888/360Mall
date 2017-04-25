//微信二维码显示
$('#weixin').on('mouseover',function(){
	$('#weixin>div').show();
	$('#weixin>div').animate({
		left: -172,
		opacity:1},
		400, function() {
		/* stuff to do after animation is complete */
		
	});
})

$('#weixin').on('mouseout',function(){

	$('#weixin>div').animate({
		left: -230,
		opacity:0},
		400, function() {
		/* stuff to do after animation is complete */
		$('#weixin>div').hide();
	});
})

//360商城二维码显示
$('#phonemall').on('mouseover',function(){
	$('#phonemall>div').show();
	$('#phonemall>div').animate({
		left: -172,
		opacity:1},
		400, function() {
		/* stuff to do after animation is complete */
		
	});
})

$('#phonemall').on('mouseout',function(){

	$('#phonemall>div').animate({
		left: -230,
		opacity:0},
		400, function() {
		/* stuff to do after animation is complete */
		$('#phonemall>div').hide();
	});
})

$('#search').on('click',function(){
	window.location.href = "/360Mall/searchGoodsAction/searchGoods.action?inreseach="+ $('#inreseach').val()+"&pagenum=1";
})
