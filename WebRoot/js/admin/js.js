

$(".fileBGT").on("change","input[type='file']",function(){
    var filePath=$(this).val();
    if(filePath.indexOf("jpg")!=-1 || filePath.indexOf("png")!=-1){
        $("#fileerrorTip").val("").hide();
        var arr=filePath.split('\\');
        var fileName=arr[arr.length-1];
        $("#showFileName").val(fileName).show();
    }else{
        $("#showFileName").val("");
        $("#fileerrorTip").val("您未上传文件，或者您上传文件类型有误！").show();
        return false; 
    }
})
