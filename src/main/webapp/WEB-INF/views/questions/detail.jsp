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

        <jsp:include page="../layoutbbs/header.jsp"></jsp:include>
        <div class="main layui-clear">
            <div class="wrap">
                <div class="content detail">
                    <h1>基于Layui的轻量级问答社区页面模版</h1>
                    <div class="fly-tip fly-detail-hint" data-id="{{rows.id}}">
                        <span class="fly-tip-stick">置顶帖</span>
                        <span class="fly-tip-jing">精帖</span>

                        <span>未结贴</span>
                        <!-- <span class="fly-tip-jie">已采纳</span> -->

                        <!-- <span class="jie-admin" type="del" style="margin-left: 20px;">删除</span>
        <span class="jie-admin" type="set" field="stick" rank="1">置顶</span> 
        <span class="jie-admin" type="set" field="stick" rank="0" style="background-color:#ccc;">取消置顶</span>
        <span class="jie-admin" type="set" field="status" rank="1">加精</span> 
        <span class="jie-admin" type="set" field="status" rank="0" style="background-color:#ccc;">取消加精</span> -->

                        <div class="fly-list-hint">
                            <i class="iconfont" title="回答">&#xe60c;</i> 517
                            <i class="iconfont" title="人气">&#xe60b;</i> 98032
                        </div>
                    </div>
                    <div class="detail-about">
                        <a class="jie-user" href="">
                            <img src="http://tp4.sinaimg.cn/1345566427/180/5730976522/0" alt="">
                            <cite>
            贤心
            <em>1分钟前发布</em>
          </cite>
                        </a>
                        <div class="detail-hits" data-id="{{rows.id}}">
                            <span style="color:#FF7200">悬赏：20飞吻</span>
                            <span class="jie-admin" type="edit"><a href="/jie/edit/{{rows.id}}">编辑此贴</a></span>
                        </div>
                    </div>

                    <div class="detail-body photos" style="margin-bottom: 20px;">
                        <p>
                            该模版由Layui官方社区（<a href="http://fly.layui.com/" target="_blank">fly.layui.com</a>）倾情提供，只为表明我们对 Layui 执着的信念、以及对未来持续加强的承诺。该模版基于Layui搭建而成，可作为简约型问答社区的页面支撑。
                        </p>
                        <p>Git仓库地址：<a href="https://github.com/layui/fly" target="_blank">https://github.com/layui/fly</a></p>
                        <p>如果你愿支持Layui持续壮大，欢迎打赏的哟(＾Ｕ＾)ノ~ＹＯ</p>
                        <p>
                            <img src="../../res/images/pay.jpg" style="border: 1px solid #e2e2e2">
                        </p>

                        <div class="fly-ad" style="margin-top: 30px; height:90px; overflow: hidden;">

                        </div>
                    </div>

                    <a name="comment"></a>
                    <h2 class="page-title">热忱回答<span>（<em id="jiedaCount">18</em>）</span></h2>

                    <ul class="jieda photos" id="jieda">
                        <li data-id="12" class="jieda-daan">
                            <a name="item-121212121212"></a>
                            <div class="detail-about detail-about-reply">
                                <a class="jie-user" href="">
                                    <img src="../../res/images/avatar/default.png" alt="">
                                    <cite>
                <i>纸飞机</i>
                <!-- <em>(楼主)</em>
                <em style="color:#5FB878">(管理员)</em>
                <em style="color:#FF9E3F">（活雷锋）</em>
                <em style="color:#999">（该号已被封）</em> -->
              </cite>
                                </a>
                                <div class="detail-hits">
                                    <span>3分钟前</span>
                                </div>
                                <i class="iconfont icon-caina" title="最佳答案"></i>
                            </div>
                            <div class="detail-body jieda-body">
                                <p>么么哒</p>
                            </div>
                            <div class="jieda-reply">
                                <span class="jieda-zan zanok" type="zan"><i class="iconfont icon-zan"></i><em>12</em></span>
                                <span type="reply"><i class="iconfont icon-svgmoban53"></i>回复</span>
                                <!-- <div class="jieda-admin">
              <span type="edit">编辑</span>
              <span type="del">删除</span>
              <span class="jieda-accept" type="accept">采纳</span>
            </div> -->
                            </div>
                        </li>

                        <li data-id="13">
                            <a name="item-121212121212"></a>
                            <div class="detail-about detail-about-reply">
                                <a class="jie-user" href="">
                                    <img src="../../res/images/avatar/default.png" alt="">
                                    <cite>
                <i>香菇</i>
                <em style="color:#FF9E3F">活雷锋</em>
              </cite>
                                </a>
                                <div class="detail-hits">
                                    <span>刚刚</span>
                                </div>
                            </div>
                            <div class="detail-body jieda-body">
                                <p>蓝瘦</p>
                            </div>
                            <div class="jieda-reply">
                                <span class="jieda-zan" type="zan"><i class="iconfont icon-zan"></i><em>0</em></span>
                                <span type="reply"><i class="iconfont icon-svgmoban53"></i>回复</span>
                                <div class="jieda-admin">
                                    <span type="edit">编辑</span>
                                    <span type="del">删除</span>
                                    <span class="jieda-accept" type="accept">采纳</span>
                                </div>
                            </div>
                        </li>

                        <!-- <li class="fly-none">没有任何回答</li> -->
                    </ul>

                    <div class="layui-form layui-form-pane">
                        <form action="/jie/reply/" method="post">
                            <div class="layui-form-item layui-form-text">
                                <div class="layui-input-block">
                                    <textarea id="L_content" name="content" required lay-verify="required" placeholder="我要回答'" class="layui-textarea fly-editor" style="height: 150px;"></textarea>
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <input type="hidden" name="jid" value="{{rows.id}}">
                                <button class="layui-btn" lay-filter="*" lay-submit>提交回答</button>
                            </div>
                        </form>
                    </div>

                </div>
            </div>
            <div class="edge">

                <h3 class="page-title">最近热帖</h3>
                <ol class="fly-list-one">
                    <li>
                        <a href=" ">Layui 官网 在线演示页面 全面增加 查看代码 功能</a>
                        <span><i class="iconfont">&#xe60b;</i> 6087</span>
                    </li>
                    <li>
                        <a href=" ">Java实现LayIM后端的核心代码</a>
                        <span><i class="iconfont">&#xe60b;</i> 767</span>
                    </li>
                    <li>
                        <a href=" ">Layui 官网 在线演示页面 全面增加 查看代码 功能</a>
                        <span><i class="iconfont">&#xe60b;</i> 767</span>
                    </li>
                    <li>
                        <a href=" ">Layui 官网 在线演示页面 全面增加 查看代码 功能</a>
                        <span><i class="iconfont">&#xe60b;</i> 767</span>
                    </li>
                    <li>
                        <a href=" ">Layui 官网 在线演示页面 全面增加 查看代码 功能</a>
                        <span><i class="iconfont">&#xe60b;</i> 767</span>
                    </li>
                    <li>
                        <a href=" ">Layui 官网 在线演示页面 全面增加 查看代码 功能</a>
                        <span><i class="iconfont">&#xe60b;</i> 767</span>
                    </li>
                    <li>
                        <a href=" ">Layui 官网 在线演示页面 全面增加 查看代码 功能</a>
                        <span><i class="iconfont">&#xe60b;</i> 767</span>
                    </li>
                    <li>
                        <a href=" ">Layui 官网 在线演示页面 全面增加 查看代码 功能</a>
                        <span><i class="iconfont">&#xe60b;</i> 767</span>
                    </li>
                </ol>

                <h3 class="page-title">近期热议</h3>
                <ol class="fly-list-one">
                    <li>
                        <a href=" ">盛赞！大赞狂赞！Layui完美兼容Vue.js</a>
                        <span><i class="iconfont">&#xe60c;</i> 96</span>
                    </li>
                    <li>
                        <a href=" ">盛赞！大赞狂赞！Layui完美兼容Vue.js</a>
                        <span><i class="iconfont">&#xe60c;</i> 96</span>
                    </li>
                    <li>
                        <a href=" ">盛赞！大赞狂赞！Layui完美兼容Vue.js</a>
                        <span><i class="iconfont">&#xe60c;</i> 96</span>
                    </li>
                    <li>
                        <a href=" ">盛赞！大赞狂赞！Layui完美兼容Vue.js</a>
                        <span><i class="iconfont">&#xe60c;</i> 96</span>
                    </li>
                    <li>
                        <a href=" ">盛赞！大赞狂赞！Layui完美兼容Vue.js</a>
                        <span><i class="iconfont">&#xe60c;</i> 96</span>
                    </li>
                    <li>
                        <a href=" ">盛赞！大赞狂赞！Layui完美兼容Vue.js</a>
                        <span><i class="iconfont">&#xe60c;</i> 96</span>
                    </li>
                    <li>
                        <a href=" ">Java实现LayIM后端的核心代码</a>
                        <span><i class="iconfont">&#xe60c;</i> 96</span>
                    </li>
                    <li>
                        <a href=" ">Java实现LayIM后端的核心代码</a>
                        <span><i class="iconfont">&#xe60c;</i> 96</span>
                    </li>
                </ol>

            </div>
        </div>


        <!-- <h2 class="page-title">404</h2>
<div class="fly-none">该问题并不存在，可能已被删除</div> -->



        <jsp:include page="../layoutbbs/footer.jsp "></jsp:include>
        <script>
            layui.cache.page = 'jie';
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
            }).use('fly', function() {
                var fly = layui.fly;
                //如果你是采用模版自带的编辑器，你需要开启以下语句来解析。
                /*
                $('.detail-body').each(function(){
                  var othis = $(this), html = othis.html();
                  othis.html(fly.content(html));
                });
                */
            });
        </script>

    </body>

    </html>