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

        <script id="detail" type="text/html">
            {{# var rows=d.rows;}} {{# if(rows){ var myself = rows.uid === user.id; }}
            <div class="main layui-clear">
                <div class="wrap">
                    <div class="content detail">
                        <h1>{{=rows.title}}</h1>
                        <div class="fly-tip fly-detail-hint" data-id="{{rows.id}}">

                            {{ rows.stick > 0 ? '<span class="fly-tip-stick">置顶帖</span>' :'' }} {{ rows.status == 1 ? '<span class="fly-tip-jing">精帖</span>' : ''}} {{# if(rows.accept === -1){ }}
                            <span>未结贴</span> {{# } else if(rows.accept >= 0 ){ }}
                            <span class="fly-tip-jie">已采纳</span> {{# } }} {{# if(user.auth == 1){ }}
                            <span class="jie-admin" type="del" style="margin-left: 20px;">删除</span> {{# } }} {{# if(user.auth == 1 || user.auth == 2){ }} {{# if(rows.stick > 0){ }}
                            <span class="jie-admin" type="set" field="stick" rank="0" style="background-color:#ccc;">取消置顶</span> {{# } else { }}
                            <span class="jie-admin" type="set" field="stick" rank="1">置顶</span> {{# }; if(rows.status == 1){ }}
                            <span class="jie-admin" type="set" field="status" rank="0" style="background-color:#ccc;">取消加精</span> {{# } else { }}
                            <span class="jie-admin" type="set" field="status" rank="1">加精</span> {{# }; } }}

                            <div class="fly-list-hint">
                                <i class="iconfont" title="回答">&#xe60c;</i> {{rows.comment}}
                                <i class="iconfont" title="人气">&#xe60b;</i> {{rows.hits}}
                            </div>
                        </div>
                        <div class="detail-about">
                            <a class="jie-user" href="/u/{{168*rows.uid}}/">
                                <img src="{{rows.user.avatar}}" alt="{{rows.user.username}}">
                                <cite>
            {{rows.user.username}}
            {{# if(rows.user.rmb){ }}
            <em style="padding:0 5px; color: #FF7200;">VIP{{ lay.util.vip(rows.user.rmb) }}</em>
            {{# } }}
            <em>发布于{{lay.time(rows.time, true)}}</em>
            {{# }}
          </cite>
                            </a>
                            <div class="detail-hits" data-id="{{rows.id}}">

                                <span style="color:#FF7200">悬赏：{{rows.experience}}飞吻</span> {{# if((user.username && myself && rows.accept == -1) || user.auth == 1){ }}
                                <span class="jie-admin" type="edit"><a href="/jie/edit/{{rows.id}}">编辑此贴</a></span> {{# } }}

                            </div>
                        </div>

                        <div class="detail-body photos" style="margin-bottom: 20px;">
                            {{ d.content(rows.content) }}

                            <!-- layer-728*90 -->
                            <div class="fly-ad" style="margin-top: 30px; height:90px; overflow: hidden;">
                                <script type="text/javascript">
                                    /*728*90*/
                                    var cpro_id = "u2482674";
                                </script>
                                <script src="http://cpro.baidustatic.com/cpro/ui/c.js" type="text/javascript"></script>
                            </div>
                        </div>

                        {{# var jieda = rows.jieda; }}

                        <a name="comment"></a>
                        <h2 class="page-title">热忱回答<span>{{rows.comment > 0 ? ('（<em id="jiedaCount">'+rows.comment+'</em>）') : ''}}</span></h2>

                        <ul class="jieda photos" id="jieda">
                            {{# jieda.forEach(function(item, index){ var myda = item.user.username === user.username; }}
                            <li data-id="{{item.id}}" {{item.id==r ows.accept ? 'class="jieda-daan"' : '' }}>
                                <a name="item-{{item.time}}"></a>
                                <div class="detail-about detail-about-reply">
                                    <a class="jie-user" href="/u/{{168*item.user.id}}/">
                                        <img src="{{item.user.avatar}}" alt="{{item.user.username}}">
                                        <cite>
                <i>{{item.user.username}}</i>
                {{# if(item.user.rmb) { }}
                <em style="padding:0 ; color: #FF7200;">VIP{{ lay.util.vip(item.user.rmb) }}</em>
                {{# } }}
                {{# if(item.user.username === rows.username){ }}
                <em>(楼主)</em>
                {{# } else if(item.user.auth == 1) { }}
                <em style="color:#5FB878">(管理员)</em>
                {{# } else if(item.user.auth == 2) { }}
                <em style="color:#FF9E3F">（活雷锋）</em>
                {{# } else if(item.user.auth == -1) { }}
                <em style="color:#999">（该号已被封）</em>
                {{# } }}
              </cite>
                                    </a>
                                    <div class="detail-hits">
                                        <span>{{lay.time(item.time)}}</span>
                                    </div>
                                    {{# if(item.id == rows.accept){ }}
                                    <i class="iconfont icon-caina" title="最佳答案"></i> {{# } }}
                                </div>
                                <div class="detail-body jieda-body">
                                    {{ d.content(item.content) }}
                                </div>
                                <div class="jieda-reply">
                                    <span class="jieda-zan {{d.session['zan'+item.id] ? 'zanok' : ''}}" type="zan">
            <i class="iconfont icon-zan"></i>
            <em>{{item.praise}}</em>
          </span>
                                    <span type="reply">
            <i class="iconfont icon-svgmoban53"></i>
            回复
          </span> {{# if(user.auth == 1 || user.auth == 2 || (user.username && myself && !myda)){ }}
                                    <div class="jieda-admin">
                                        {{# if(user.auth == 1 || (user.auth == 2 && item.accept != 1)){ }}
                                        <span type="edit">
                编辑
              </span>
                                        <span type="del">
                删除
              </span> {{# if(rows.accept == -1){ }}
                                        <span class="jieda-accept" type="accept">
                采纳
              </span> {{# } }} {{# } else if(rows.accept == -1 && !myda){ }}
                                        <span class="jieda-accept" type="accept">
                采纳
              </span> {{# } }}
                                    </div>
                                    {{# } }}
                                </div>
                            </li>
                            {{# }); if(jieda.length === 0){ }}
                            <li class="fly-none">没有任何回答</li>
                            {{# } }}
                        </ul>

                        {{ d.laypage }}

                        <div class="layui-form layui-form-pane">
                            <form action="/jie/reply/" method="post">
                                <div class="layui-form-item layui-form-text">
                                    <div class="layui-input-block">
                                        <textarea id="L_content" name="content" required lay-verify="required" placeholder="我要{{myself ? '自问自答' : '回答'}}" class="layui-textarea fly-editor" style="height: 150px;">{{d.edit ? d.edit.content : ''}}</textarea>
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
                        {{# d.hot.forEach(function(item){ }}
                        <li>
                            <a href="/jie/{{item.id}}.html">{{= item.title }}</a>
                            <span><i class="iconfont">&#xe60b;</i> {{item.hits}}</span>
                        </li>
                        {{# }); }}
                    </ol>
                </div>
            </div>
            {{# } else { }}
            <h2 class="page-title">404</h2>
            <div class="fly-none">该问题并不存在，肯能已被删除</div>
            {{# } }}

        </script>
        <div id="details"></div>

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
            }).use(['fly', 'jquery', 'laytpl'], function() {
                var fly = layui.fly;
                var $ = layui.jquery;
                var laytpl = layui.laytpl;

                $.get("/questions/getone", { //问题详情
                    id: 'f1213640-9c92-4aa8-8cfb-641f4855b63c'
                }, function(data) {
                    var obj = JSON.parse(data);
                    var getTpl = $("#detail").html();
                    laytpl(getTpl).render(obj, function(html) {
                        $("#details").html(html);
                    });
                });


                // $('.detail-body').each(function() {
                //     var othis = $(this),
                //         html = othis.html();
                //     othis.html(fly.content(html));
                // });

                $.get("/questions/get", { //热贴
                    index: 1,
                    size: 8
                }, function(data) {
                    var obj = JSON.parse(data);
                    var getTpl = $("#hotquestion").html();
                    laytpl(getTpl).render(obj, function(html) {
                        $("#hotquestions").html(html);
                    });
                });
            });
        </script>

    </body>

    </html>