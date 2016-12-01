<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
    <!DOCTYPE html>
    <html>

    <head>
        <jsp:include page="WEB-INF/views/layout/header.jsp"></jsp:include>
    </head>

    <body class="site-home" id="LAY_home" style="background-color: #eee;">
        <div class="layui-header header header-index">
            <div class="layui-main">

                <a class="logo" href="#" style="color:#c2c2c2;">
            OpenAuth.Net
        </a>

                <ul class="layui-nav">
                    <li class="layui-nav-item ">
                        <a href="club/index">社区</a>
                    </li>
                    <li class="layui-nav-item ">
                        <a href="http://www.w3cschool.cn/openauthdotnet/e8931tly.html">文档</a>
                    </li>
                    <li class="layui-nav-item ">
                        <a href="https://git.oschina.net/yubaolee/OpenAuth.Net/issues">提交BUG</a>
                    </li>
                    <li class="layui-nav-item">
                        <a href="http://www.cnblogs.com/yubaolee/">我的博客</a>
                    </li>
                </ul>
            </div>
        </div>

        <div class="site-banner">
            <div class="site-banner-bg" style="background-image: url(Resources/images/banner.jpg); background-color: #080018;">
            </div>
            <div class="site-banner-main">
                <div class="site-zfj site-zfj-anim">
                    <i class="layui-icon" style="color: #FBDAC7; color: rgba(255,255,255,.5);">&#xe620;</i>
                </div>
                <div class="layui-anim site-desc site-desc-anim">
                    <cite>简洁实用的工作流引擎，教科书级设计，可作为《企业应用架构模式》《ASP.NET设计模式》参考代码</cite>
                </div>
                <div class="site-download">
                    <a href="http://183.230.7.248:13144/Login/Index" class="layui-inline layui-btn layui-btn-normal" target="_blank">
                        <cite class="layui-icon"></cite> 在线演示
                    </a>

                    <a id="downloadBtn" href="https://git.oschina.net/yubaolee/OpenAuth.Net" class="layui-inline site-down" target="_blank">
                        <cite class="layui-icon"></cite> 立即下载
                    </a>
                </div>
                <jsp:include page="/main/getversion"></jsp:include>
                <div class="site-banner-other">
                    <script src='https://git.oschina.net/yubaolee/OpenAuth.Net/star_widget_preview'></script>
                </div>
            </div>
        </div>

        <div class="layui-main">
            <ul class="site-idea">
                <li>
                    <fieldset class="layui-elem-field layui-field-title">
                        <legend>返璞归真</legend>
                        <p>权限管理正在变得日渐喧嚣，我们似乎很难停下追逐的脚步。而OpenAuth.Net偏偏回望当初，奔赴在返璞归真的漫漫征途，自信并勇敢着，追寻于原生态的书写指令，试图以最简单的方式诠释高效。</p>
                    </fieldset>
                </li>
                <li>
                    <fieldset class="layui-elem-field layui-field-title">
                        <legend>享受代码</legend>
                        <p> 君不见当下权限系统的源码，犹如如厕之蛆。OpenAuth.Net教科书级的设计理念，享受coding才是一切美好的起点</p>
                    </fieldset>
                </li>
                <li>
                    <fieldset class="layui-elem-field layui-field-title">
                        <legend>星辰大海</legend>
                        <p>如果眼下还是一团零星之火，那运筹帷幄之后，迎面东风，就是一场烈焰燎原吧，那必定会是一番尽情的燃烧。待，秋风萧瑟时，散作满天星辰，你看那海天相接，正是OpenAuth.Net不灭的执念。</p>
                    </fieldset>
                </li>
            </ul>

        </div>

        <div class="layui-footer footer footer-index">
            <div class="layui-main">
                <p>2016 © <a href="/">openauth.me</a> LGPL license 官方技术交流群：484498493 </p>
                <p>
                    <a href="mailto:yubaolee@163.com">商务合作</a>
                    <a href="https://git.oschina.net/yubaolee/OpenAuth.Net" target="_blank">Git仓库</a>
                </p>
            </div>
        </div>

        <script src="Resources/layui/layui.js"></script>
        <script src="Resources/jquery.js"></script>
        <script src="blljs/index.js"></script>
        <script src="Resources/tctip-master/js/tctip.min.js"></script>
        <script src="blljs/statistics.js"></script>
    </body>

    </html>