$(document).ready(function() {
  $('.overview > a').click(function() {
    $('.overview > a').toggleClass('darken');
    $('.chapters').toggleClass('hidden');
    return false;
  });

  $(window).scroll(function() {
    var scroll = $(window).scrollTop();
    if (scroll >= 75) {
      $('.overview').addClass('sticky');
      $('.bookmark').addClass('sticky');
      $('.exit').css({position: 'fixed'});
    } else {
      $('.overview').removeClass('sticky');
      $('.bookmark').removeClass('sticky');
      $('.exit').css({position: 'absolute'});
    }
  });
});

