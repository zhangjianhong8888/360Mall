function doAddGoods() {
	if($('#idOfUser').val() == ''){
		$('#logindiv').show();
		$('#message').html('');
	}else{
		window.location.href = "/360Mall/searchGoodsAction/addGoodsToShopCar.action?goonum="+$('#goonum').val()+"&userid="+$('#idOfUser').val()+"&shonumber="+$('#pcount').val();
	}
}

function closelogindiv() {
		$('#logindiv').hide();
		$('#idOfUser').val('')
}

function doChaneNum(num) {
	var sum = $('#pcount').val() - num;
	if($('#pcount').val()==1&&num==1){
		
	}else{
		$('#pcount').val(sum);
	}
}

function looknum() {
	var regist = /\d{1}/;
	if(!(regist.test($('#pcount').val())&&$('#pcount').val()>0)){
		$('#pcount').val('1');
	}
}

function logintojsp(){
	$.post("/360Mall/searchGoodsAction/loginToShop.action",{"username":$('#userstring').val(),"password":$('#userpass').val()},function(data){
		if(data != 'no'){
			$('#menudiv').html(data);
			$('#logindiv').hide();
		}else{
			$('#message').html('用户名或密码错误').css('color','red');
		}
		
	})
}