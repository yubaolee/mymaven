  layui.use(['laypage', 'laytpl'], function() {
      var laytpl = layui.laytpl;
      var laypage = layui.laypage;
      $.get("../questions/get", {
          index: 1,
          size: 20
      }, function(data) {
          var obj = JSON.parse(data);
          var getTpl = $("#question").html();
          laytpl(getTpl).render(obj, function(html) {
              $("#questions").html(html);
          });

          laypage({
              cont: 'pager'
              ,pages: obj.Result.pagecnt //总页数
              ,groups: 5 //连续显示分页数
          });
      });

      $.get("../user/getnew", {
          index: 1,
          size: 8
      }, function(data) {
          var obj = JSON.parse(data);
          var getTpl = $("#user").html();
          laytpl(getTpl).render(obj, function(html) {
              $("#users").html(html);
          });
      });

      $.get("../questions/get", {
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