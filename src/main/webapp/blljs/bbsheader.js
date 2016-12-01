  layui.use('laytpl', function() {
      var laytpl = layui.laytpl;

      $.get("../user/header", function(data) {
          var obj = JSON.parse(data);
          var getTpl = $("#demo").html();
          laytpl(getTpl).render(obj, function(html) {
              $("#view").html(html);
          });
      })
  });