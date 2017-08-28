$(document).ready(function() {
  $(window).scroll(function() {
    var scroll = $(window).scrollTop();
    $("#scroll-value").val(scroll);
  });
});

