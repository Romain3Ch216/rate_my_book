$(document).ready(function() {

  $(".chapter-info").hover(function(e) {
    var color = $(".chapter-info").data("color");
    $(this).css(
      "background-color", e.type === "mouseenter"?color.replace(/[^,]+(?=\))/, '0.2'):"transparent",
    );
  })

  $(".resume-reading-button").hover(function(e) {
    var color = $(".resume-reading-button").data("color");
    $(this).css(
      "background-color", e.type === "mouseenter"?color:"transparent",
      "border-left-color", e.type === "mouseenter"?color:"transparent",
    );
  })

});
