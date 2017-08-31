$(document).ready(function() {

  var color = $(".chapter-info").data("color");


  $(".chapter-info").hover(function(e) {
    $(this).css({
      "background-color": e.type === "mouseenter"?color.replace(/[^,]+(?=\))/, '0.2'):"transparent",
      "border-left-color": e.type === "mouseenter"?color:"transparent",
    });
  })

  $(".blocked").hover(function(e) {
    $(this).css({
      "background-color": "rgba(230, 230, 230, 1)",
      "border-left-color": "rgba(230, 230, 230, 1)",
    });
  })


  // $(".comment-link").hover(function(e) {
  //   $("#comment-icon").attr("fill", e.type === "mouseenter"?"#B2B2B2":"#C0C0C0");
  // });


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
