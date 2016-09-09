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
        $('#testbutton').css('color', 'red');
       
    });
});