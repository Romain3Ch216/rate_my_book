$(document).ready(function() {

  var color = $(".chapter-info").data("color");


  $(".chapter-info").hover(function(e) {
    $(this).css({
      "background-color": e.type === "mouseenter"?color.replace(/[^,]+(?=\))/, '0.2'):"transparent",
      "border-left-color": e.type === "mouseenter"?color:"transparent",
    });
  })

  $(".resume-reading-button").css({
      "background-color": color,
      "border-color": color,
    });
  $(".resume-reading-button").hover(function(e) {
    $(this).css({
      "background-color": e.type === "mouseenter"?"transparent":color,
      "color": e.type === "mouseenter"?color:"white",
    });
  })

  var color_2 = $(".book-button").data("color");

  $(".resume-reading-button").css({
    "background-color": color_2,
    "border-color": color_2,
  });

});
