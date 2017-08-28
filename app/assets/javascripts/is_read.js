$(document).ready(function() {
  $(window).scroll(function() {
    var textEnd = $('#text').offset().top + $('#text').height()
    var scroll = $(window).scrollTop()
    if ((scroll < textEnd) && (textEnd < scroll + $(window).height())) {
      $('#is-read').val('true');
    };
  });
});
