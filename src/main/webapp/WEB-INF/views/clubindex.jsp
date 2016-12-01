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
        <script src="../Resources/layui/layui.js"></script>

    </head>

    <body>

        <jsp:include page="layoutbbs/header.jsp"></jsp:include>

        <div class="main layui-clear">
            <div class="wrap">
                <div class="content">
                    <div class="fly-tab">
                        <span>
          <a href="#">全部</a>
          <a href="#">未结帖</a>
          <a href="#">已采纳</a>
          <a href="#">精帖</a>
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

                    </ul>

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

      </span>
                </div>

                <h3 class="page-title">最近热帖</h3>
                <ol class="fly-list-one">
                    <li>
                        <a href="jie/detail.html">Layui 官网 在线演示页面 全面增加 查看代码 功能</a>
                        <span><i class="iconfont">&#xe60b;</i> 6087</span>
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

        <jsp:include page="layoutbbs/footer.jsp"></jsp:include>
        <script src="../blljs/statistics.js"></script>
        <script>
            layui.cache.page = '';
            layui.cache.user = {
                username: '游客',
                uid: -1,
                avatar: '../Resources/fly/images/avatar/00.jpg',
                experience: 83,
                sex: '男'
            };
            layui.config({
                version: "1.0.0",
                base: '../Resources/fly/mods/'
            }).extend({
                fly: 'index'
            }).use('fly');
        </script>

    </body>

    </html>