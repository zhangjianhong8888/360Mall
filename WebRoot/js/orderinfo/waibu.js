var mall_page = {
            qtoken: '0b020b',
            real_qtoken: 'e2082fdd94cdfecd265e7008775a90dd',
            qtoken_timestamp :'1474942729',
            sb_param: 'cc433ae27ba6a3bd61bdc729727cb290'
        };
        String.prototype.protocol = function(){

            var str = this;

            str = window.isSupportWebp ? (str.replace(/(\.jpg|\.png)/g, ".webp")) : str;

            return str.replace(/http:\/\/p\d\.qh[imgs]{3}/,"https://p.ssl.qhmsg");
        };
        window.isSupportWebp = false;
        void function(){

        	var webpTestsUri = 'data:image/webp;base64,UklGRiQAAABXRUJQVlA4IBgAAAAwAQCdASoBAAEAAwA0JaQAA3AA/vuUAAA=';

			var image = new Image();

			function addResult(event) {
			    // if the event is from 'onload', check the see if the image's width is
			    // 1 pixel (which indiciates support). otherwise, it fails

			    window.isSupportWebp = event && event.type === 'load' ? image.width == 1 : false;
			}

			image.onerror = addResult;
			image.onload = addResult;

			image.src = webpTestsUri;
        }();


var _isindex = 0;
            
function  finish(ordnumber) {
	$.post("/360Mall/orderInfoAction/finishAction.action",{ordnumber:ordnumber},function(date){
		if(date=="yes"){
			$("#"+ordnumber+"state").html("交易完成");
			$("#"+ordnumber+"fin").html("");
			$("#"+ordnumber+"del").html("");
			$("#dopost").css('display','block');
		}else{
			finish(ordnumber);
		}
	})
	
}
function logintojspby(url) {
	window.location.href = url;
}
function logintojspby2(url) {
	$("#dopost").css('display','none');
}