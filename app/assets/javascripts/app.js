function notifyPayResult(result) {
    if (result) {
        $('#testbutton').css('color', 'red');
    } else {
        $('#testbutton').css('color', 'green');
    }
}

$(function(){
     function callNativeApp () {
        try {
            //webkit.messageHandlers.callbackHandler.postMessage("Hello from JavaScript");
            webkit.messageHandlers.payCallbackHandler.postMessage("com.jufang.jfzs.testvipcourse");
        } catch(err) {
            console.log('The native context does not exist yet');
        }
    }

    $('#buybutton').click(function(){
        //alert('buybutton');
        callNativeApp();
       
    });

    $('#testbutton').click(function(){
        //alert('test pressed');
        //$('#testbutton').css('color', 'red');
        notifyPayResult(false)
       
    });

    $('#wechatbutton').click(function(){
        try {
            //webkit.messageHandlers.callbackHandler.postMessage("Hello from JavaScript");
            webkit.messageHandlers.openApp.postMessage("weixin://wap/pay?appid%3Dwx2421b1c4370ec43b%26noncestr%3Dlt31u73ZrN1am9y0%26package%3DWAP%26prepayid%3Dwx201609291712438e4ef2eacb0361971445%26timestamp%3D1475140363%26sign%3D11F272A209B9883E986FC2F6BC790994");
        } catch(err) {
            console.log('The native context does not exist yet');
        }
    });

    
});