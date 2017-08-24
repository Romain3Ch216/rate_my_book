$(document).ready(function() {
  $(window).scroll(function() {
    var scroll = $(window).scrollTop();
    if (scroll >= 90) {
      $('.home-navbar').addClass('transparent');
    } else {
      $('.home-navbar').removeClass('transparent');
    }
  });
});

