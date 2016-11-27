/**
 * Created by Administrator on 2016-11-27.
 */

//打赏模块
window.tctipConfig = {
    //图片路径前缀，用来修订图片相对路径,默认为""
    imagePrefix:  "Resources/tctip-master",
    //css路径前缀，用来修订css相对路径,默认为""
    cssPrefix:	  "Resources/tctip-master",
    buttonImageId:  3,
    buttonTip:  "zanzhu",
    list:{
        alipay: {qrimg: "img/alipayqr.png"},
        weixin:{qrimg: "img/weipayimg.png"},
    }
};

//一般直接写在一个js文件中
layui.use(['layer', 'form'], function(){
    var layer = layui.layer,form = layui.form();

});

//百度统计
var _hmt = _hmt || [];
(function() {
    var hm = document.createElement("script");
    hm.src = "//hm.baidu.com/hm.js?0558502420ce5fee054b31425e77ffa6";
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(hm, s);
})();