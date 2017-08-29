$(document).ready(function () {
  $('.chapter-new-form').on( 'change keyup keydown paste cut', 'textarea', function (){
      $(this).height(0).height(this.scrollHeight);
  }).find( 'textarea' ).change();
});
