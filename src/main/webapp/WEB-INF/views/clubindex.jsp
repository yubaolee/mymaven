<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>OpenAuth.net官方社区 - 基于DDD的权限管理系统</title>
    <meta name="Keywords" content="openauth.net,Openauth,权限管理,工作流,workflow">
    <meta name="Description" content="openauth.net,openauth,权限管理，工作流,workflow">
    <link rel="stylesheet" href="../Resources/layui/css/layui.css">
    <link rel="stylesheet" href="../Resources/fly/css/global.css">
</head>
<body>

<div class="header">
    <div class="main">
        <a class="logo" href="/" title="OpenAuth.Net">OpenAuth.Net社区</a>
        <div class="nav">
            <a class="nav-this" href="jie/index.html">
                <i class="iconfont icon-wenda"></i>问答
            </a>
            <a href="http://www.openauth.me/" target="_blank">
                <i class="iconfont icon-ui"></i>框架
            </a>
        </div>

        <div class="nav-user">
            <!-- 未登入状态 -->
            <a class="unlogin" href="user/login.html"><i class="iconfont icon-touxiang"></i></a>
            <span><a href="user/login.html">登入</a><a href="user/reg.html">注册</a></span>
            <p class="out-login">
                <a href="" onclick="layer.msg('正在通过QQ登入', {icon:16, shade: 0.1, time:0})" class="iconfont icon-qq" title="QQ登入"></a>
                <a href="" onclick="layer.msg('正在通过微博登入', {icon:16, shade: 0.1, time:0})" class="iconfont icon-weibo" title="微博登入"></a>
            </p>

            <!-- 登入后的状态 -->
            <!-- 
            <a class="avatar" href="user/index.html">
              <img src="http://tp4.sinaimg.cn/1345566427/180/5730976522/0">
              <cite>贤心</cite>
              <i>VIP2</i>
            </a>
            <div class="nav">
              <a href="/user/set/"><i class="iconfont icon-shezhi"></i>设置</a>
              <a href="/user/logout/"><i class="iconfont icon-tuichu" style="top: 0; font-size: 22px;"></i>退了</a>
            </div> -->

        </div>
    </div>
</div>


<div class="main layui-clear">
    <div class="wrap">
        <div class="content">
            <div class="fly-tab">
        <span>
          <a href="jie/index.html">全部</a>
          <a href="jie/index.html">未结帖</a>
          <a href="jie/index.html">已采纳</a>
          <a href="jie/index.html">精帖</a>
          <a href="user/index.html">我的帖</a>
        </span>
                <form action="http://cn.bing.com/search" class="fly-search">
                    <i class="iconfont icon-sousuo"></i>
                    <input class="layui-input" autocomplete="off" placeholder="搜索内容，回车跳转" type="text" name="q">
                </form>
                <a href="jie/add.html" class="layui-btn jie-add">发布问题</a>
            </div>


            <ul class="fly-list">
                <li class="fly-list-li">
                    <a href="user/home.html" class="fly-list-avatar">
                        <img src="http://tp4.sinaimg.cn/1345566427/180/5730976522/0" alt="">
                    </a>
                    <h2 class="fly-tip">
                        <a href="jie/detail.html">基于Layui的轻量级问答社区页面模版</a>
                        <span class="fly-tip-stick">置顶</span>
                        <span class="fly-tip-jing">精帖</span>
                    </h2>
                    <p>
                        <span><a href="user/home.html">贤心</a></span>
                        <span>刚刚</span>
                        <span>layui框架综合</span>
                        <span class="fly-list-hint"> 
              <i class="iconfont" title="回答">&#xe60c;</i> 317
              <i class="iconfont" title="人气">&#xe60b;</i> 6830
            </span>
                    </p>
                </li>
                <li class="fly-list-li">
                    <a href="user/home.html" class="fly-list-avatar">
                        <img src="../Resources/fly/images/avatar/00.jpg" alt="">
                    </a>
                    <h2 class="fly-tip">
                        <a href="jie/detail.html"> Layui 首个版本千呼万唤，终于滚出来了 </a>
                        <span class="fly-tip-stick">置顶</span>
                    </h2>
                    <p>
                        <span><a href="user/home.html">纸飞机</a></span>
                        <span>30分钟前</span>
                        <span>技术闲谈</span>
                        <span class="fly-list-hint"> 
              <i class="iconfont" title="回答">&#xe60c;</i> 502
              <i class="iconfont" title="人气">&#xe60b;</i> 81689
            </span>
                    </p>
                </li>

                <li class="fly-list-li">
                    <a href="user/home.html" class="fly-list-avatar">
                        <img src="../Resources/fly/images/avatar/default.png" alt="">
                    </a>
                    <h2 class="fly-tip">
                        <a href="jie/detail.html">关于layui 引用其他插件，扩展模块 的用法</a>
                    </h2>
                    <p>
                        <span><a href="user/home.html">用户昵称</a></span>
                        <span>1小时前</span>
                        <span>layui框架综合</span>
                        <span class="fly-list-hint"> 
              <i class="iconfont" title="回答">&#xe60c;</i> 8
              <i class="iconfont" title="人气">&#xe60b;</i> 106
            </span>
                    </p>
                </li>
                <li class="fly-list-li">
                    <a href="user/home.html" class="fly-list-avatar">
                        <img src="../Resources/fly/images/avatar/default.png" alt="">
                    </a>
                    <h2 class="fly-tip">
                        <a href="jie/detail.html">关于layui 引用其他插件，扩展模块 的用法</a>
                    </h2>
                    <p>
                        <span><a href="user/home.html">用户昵称</a></span>
                        <span>1小时前</span>
                        <span>layui框架综合</span>
                        <span class="fly-list-hint"> 
              <i class="iconfont" title="回答">&#xe60c;</i> 8
              <i class="iconfont" title="人气">&#xe60b;</i> 106
            </span>
                    </p>
                </li>
                <li class="fly-list-li">
                    <a href="user/home.html" class="fly-list-avatar">
                        <img src="../Resources/fly/images/avatar/default.png" alt="">
                    </a>
                    <h2 class="fly-tip">
                        <a href="jie/detail.html">关于layui 引用其他插件，扩展模块 的用法</a>
                    </h2>
                    <p>
                        <span><a href="user/home.html">用户昵称</a></span>
                        <span>1小时前</span>
                        <span>layui框架综合</span>
                        <span class="fly-list-hint"> 
              <i class="iconfont" title="回答">&#xe60c;</i> 8
              <i class="iconfont" title="人气">&#xe60b;</i> 106
            </span>
                    </p>
                </li>



                <li class="fly-list-li">
                    <a href="user/home.html" class="fly-list-avatar">
                        <img src="../Resources/fly/images/avatar/default.png" alt="">
                    </a>
                    <h2 class="fly-tip">
                        <a href="jie/detail.html">关于layui 引用其他插件，扩展模块 的用法</a>
                    </h2>
                    <p>
                        <span><a href="user/home.html">用户昵称</a></span>
                        <span>1小时前</span>
                        <span>layui框架综合</span>
                        <span class="fly-list-hint"> 
              <i class="iconfont" title="回答">&#xe60c;</i> 8
              <i class="iconfont" title="人气">&#xe60b;</i> 106
            </span>
                    </p>
                </li>


                <li class="fly-list-li">
                    <a href="user/home.html" class="fly-list-avatar">
                        <img src="../Resources/fly/images/avatar/default.png" alt="">
                    </a>
                    <h2 class="fly-tip">
                        <a href="jie/detail.html">关于layui 引用其他插件，扩展模块 的用法</a>
                    </h2>
                    <p>
                        <span><a href="user/home.html">用户昵称</a></span>
                        <span>1小时前</span>
                        <span>layui框架综合</span>
                        <span class="fly-list-hint"> 
              <i class="iconfont" title="回答">&#xe60c;</i> 8
              <i class="iconfont" title="人气">&#xe60b;</i> 106
            </span>
                    </p>
                </li>
            </ul>

            <div style="text-align: center">
                <div class="laypage-main">
                    <a href="jie/index.html" class="laypage-next">更多求解</a>
                </div>
            </div>

        </div>
    </div>
    <div class="edge">


        <h3 class="page-title">活跃用户 - TOP 8</h3>
        <div class="user-looklog leifeng-rank">
      <span>
        <a href="user/home.html">
          <img src="../Resources/fly/images/avatar/default.png">
          <cite>纸飞机</cite>
          <i>159次回答</i>
        </a>
        <a href="user/home.html">
          <img src="../Resources/fly/images/avatar/default.png">
          <cite>纸飞机</cite>
          <i>159次回答</i>
        </a>
        <a href="user/home.html">
          <img src="../Resources/fly/images/avatar/default.png">
          <cite>纸飞机</cite>
          <i>159次回答</i>
        </a>
        <a href="user/home.html">
          <img src="../Resources/fly/images/avatar/default.png">
          <cite>纸飞机</cite>
          <i>159次回答</i>
        </a>
        <a href="user/home.html">
          <img src="../Resources/fly/images/avatar/default.png">
          <cite>纸飞机</cite>
          <i>159次回答</i>
        </a>
        <a href="user/home.html">
          <img src="../Resources/fly/images/avatar/default.png">
          <cite>纸飞机</cite>
          <i>159次回答</i>
        </a>
        <a href="user/home.html">
          <img src="../Resources/fly/images/avatar/default.png">
          <cite>纸飞机</cite>
          <i>159次回答</i>
        </a>
        <a href="user/home.html">
          <img src="../Resources/fly/images/avatar/default.png">
          <cite>纸飞机</cite>
          <i>159次回答</i>
        </a>
      </span>
        </div>

        <h3 class="page-title">最近热帖</h3>
        <ol class="fly-list-one">
            <li>
                <a href="jie/detail.html">Layui 官网 在线演示页面 全面增加 查看代码 功能</a>
                <span><i class="iconfont">&#xe60b;</i> 6087</span>
            </li>
            <li>
                <a href="jie/detail.html">Java实现LayIM后端的核心代码</a>
                <span><i class="iconfont">&#xe60b;</i> 767</span>
            </li>
            <li>
                <a href="jie/detail.html">Layui 官网 在线演示页面 全面增加 查看代码 功能</a>
                <span><i class="iconfont">&#xe60b;</i> 767</span>
            </li>
            <li>
                <a href="jie/detail.html">Layui 官网 在线演示页面 全面增加 查看代码 功能</a>
                <span><i class="iconfont">&#xe60b;</i> 767</span>
            </li>
            <li>
                <a href="jie/detail.html">Layui 官网 在线演示页面 全面增加 查看代码 功能</a>
                <span><i class="iconfont">&#xe60b;</i> 767</span>
            </li>
        </ol>


        <div class="fly-link">
            <span>友情链接：</span>
            <a href="http://www.layui.com/" target="_blank">Layui</a>
            <a href="http://layim.layui.com/" target="_blank">LayIM</a>
            <a href="http://layer.layui.com/" target="_blank">layer</a>
        </div>


    </div>
</div>

<div class="footer">
    <p>2016 © <a href="/">openauth.me</a> LGPL license 官方技术交流群：484498493 </p>
    <p>
        <a href="mailto:yubaolee@163.com">商务合作</a>
        <a href="https://git.oschina.net/yubaolee/OpenAuth.Net" target="_blank">Git仓库</a>
    </p>
</div>
<script src="../blljs/statistics.js"></script>
<script src="../Resources/layui/layui.js"></script>
<script>
    layui.cache.page = '';
    layui.cache.user = {
        username: '游客'
        ,uid: -1
        ,avatar: '../Resources/fly/images/avatar/00.jpg'
        ,experience: 83
        ,sex: '男'
    };
    layui.config({
        version: "1.0.0"
        ,base: '../Resources/fly/mods/'
    }).extend({
        fly: 'index'
    }).use('fly');
</script>

</body>
</html>