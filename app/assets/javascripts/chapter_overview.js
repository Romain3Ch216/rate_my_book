$(document).ready(function() {
  $('.overview > a').click(function() {
    $('.overview > a').toggleClass('darken');
    $('.chapters').toggleClass('hidden');
    return false;
  });

  $(window).scroll(function() {
    var scroll = $(window).scrollTop();
    if (scroll >= 115) {
      $('.overview').addClass('sticky');
    } else {
      $('.overview').removeClass('sticky');
    }
  });
});

