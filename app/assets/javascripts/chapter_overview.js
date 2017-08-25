$(document).ready(function() {
  $('.overview > a').click(function() {
    $('.overview > a').toggleClass('darken');
    $('.chapters').toggleClass('hidden');
    return false;
  });

  $(window).scroll(function() {
    var scroll = $(window).scrollTop();
    if (scroll >= 80) {
      $('.overview').addClass('sticky');
      $('.exit').addClass('sticky');
    } else {
      $('.overview').removeClass('sticky');
    }
  });
});

