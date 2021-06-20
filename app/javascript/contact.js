$(function(){


  $('.faq-list-item').click(function () {
    var $answer = $(this).find('.faq-answer');
    if ($answer.hasClass('open')) {
      $answer.removeClass('open');
      $answer.slideUp();
      $(this).find('span').text('+');
    } else {
      $answer.addClass('open');
      $answer.slideDown();
      $(this).find('span').text('-');
    }
  });


});