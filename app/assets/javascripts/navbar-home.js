$(document).ready(function() {
  $(window).scroll(function() {
    var scroll = $(window).scrollTop();
    if (scroll >= 90) {
      $('.home-navbar').addClass('transparent');
      $('.cadre').addClass('transparent');
    } else {
      $('.home-navbar').removeClass('transparent');
      $('.cadre').removeClass('transparent');
    }
  });
});

