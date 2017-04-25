
function doJian(shoppingid){
	var shocountid = shoppingid+'num';
	var onemoneyid = shoppingid+'one';
	var countmoneyid = shoppingid + 'count';
	var sumcountid = 'counmony';
	if($("#"+shocountid).val()==1){		
	}else{		
		var num = $("#"+shocountid).val() - 1;
		$("#"+shocountid).val(num);
		var countmoney = $("#"+countmoneyid).html()-$("#"+onemoneyid).html();
		$("#"+countmoneyid).html(countmoney);
		var summoney = $("#"+sumcountid).html()-$("#"+onemoneyid).html();
		$("#"+sumcountid).html(summoney);
		$.post("shoppingAction/updateShopping.action",{shoppingid:shoppingid,shonumber:num},function(){})
	}	
}
function doJia(shoppingid){
	var shocountid = shoppingid+'num';
	var onemoneyid = shoppingid+'one';
	var countmoneyid = shoppingid + 'count';
	var sumcountid = 'counmony';
	var num = $("#"+shocountid).val() - (-1);
	$("#"+shocountid).val(num);
	var countmoney = $("#"+countmoneyid).html()-(-$("#"+onemoneyid).html());
	$("#"+countmoneyid).html(countmoney);
	var summoney = $("#"+sumcountid).html()-(-$("#"+onemoneyid).html());
	$("#"+sumcountid).html(summoney);
	$.post("shoppingAction/updateShopping.action",{shoppingid:shoppingid,shonumber:num},function(){})
}
//fuction deleteID(shoppingid){
//	var shocountid = shoppingid+'num';
//	var onemoneyid = shoppingid+'one';
//	var countmoneyid = shoppingid + 'count';
//	var sumcountid = 'counmony';
//	var countmoney = $("#"+countmoneyid).html()-$("#"+onemoneyid).html();
//	$("#"+countmoneyid).html(countmoney);
//	var summoney = $("#"+sumcountid).html()-$("#"+onemoneyid).html();
//	$("#"+sumcountid).html(summoney);
//}


