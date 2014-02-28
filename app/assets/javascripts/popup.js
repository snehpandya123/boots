 var gallery, slideShow;

slideShow = function() {
  $("#gallery a").css({
    opacity: 0.0
  });
  $("#gallery a:first").css({
    opacity: 1.0
  });
  $("#gallery .caption").css({
    opacity: 0.7
  });
  $("#gallery .caption").css({
    width: $("#gallery a").find("img").css("width")
  });
  $("#gallery .content").html($("#gallery a:first").find("img").attr("rel")).animate({
    opacity: 0.7
  }, 400);
  setInterval("gallery()", 6000);
};

gallery = function() {
  var caption, current, next;
  current = ($("#gallery a.show") ? $("#gallery a.show") : $("#gallery a:first"));
  next = ((current.next().length) ? (current.next().hasClass("caption") ? $("#gallery a:first") : current.next()) : $("#gallery a:first"));
  caption = next.find("img").attr("rel");
  next.css({
    opacity: 0.0
  }).addClass("show").animate({
    opacity: 1.0
  }, 1000);
  current.animate({
    opacity: 0.0
  }, 1000).removeClass("show");
  $("#gallery .caption").animate({
    opacity: 0.0
  }, {
    queue: false,
    duration: 0
  }).animate({
    height: "1px"
  }, {
    queue: true,
    duration: 300
  });
  $("#gallery .caption").animate({
    opacity: 0.7
  }, 100).animate({
    height: "100px"
  }, 500);
  $("#gallery .content").html(caption);
};
