$(document).ready(function () {
  $('.tab').click(function() {
    $('.tab').removeClass('active');
    $(this).addClass('active');
    $('.tab-content').addClass('hidden');
    $($(this).data("target")).removeClass('hidden');
  });
});
