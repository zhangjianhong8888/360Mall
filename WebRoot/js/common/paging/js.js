function logintojsp(inreseach,pagenum) {
	window.location.href = "/360Mall/searchGoodsAction/searchGoods.action?inreseach="+ inreseach+"&pagenum="+pagenum;
} 
function searchGoodsASC(inreseach){
	window.location.href = "/360Mall/searchGoodsAction/searchGoodsASC.action?inreseach="+ inreseach+"&pagenum=1";
}
function todetailsjsp(goonum){
	window.location.href = "/360Mall/searchGoodsAction/searchOneGood.action?goonum="+ goonum;
}

function searchGoods(inreseach) {
	window.location.href = "/360Mall/searchGoodsAction/searchGoods.action?inreseach="+ inreseach+"&pagenum=1";
}