/*global $*/ 

$(function() {
  $('#scrolltop a').hide();
  $(window).scroll(function() {
     if ($(this).scrollTop() > 100) {
          $('#scrolltop a').fadeIn();
     } else {
          $('#scrolltop a').fadeOut();
     }
  });
  $('#scrolltop a').on('click',function(event){
    $('body, html').animate({
      scrollTop:0
    }, 600);
    event.preventDefault();
  });
});

$(function() {
  $('.menu-trigger').on('click', function(event) {
    $(this).toggleClass('active');
    $('#sp-menu').fadeToggle();
    event.preventDefault();
  });
});