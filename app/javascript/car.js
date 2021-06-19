$(function(){

  $('.home-car-top-test').click(function(){
    $('.home-car-top-sucsess').fadeIn();
  });

  $('.car-drive').click(function(){
    // $('#cuple_man').show();
    $('#couple_man').show();
  });

  $('#couple_man-modal').click(function(){
    $('#couple_man').fadeOut();
  });

  $('.car_lover').click(function(){
    // $('#cuple_man').show();
    $('#lover_woman').show();
  });

  $('#lover_woman-modal').click(function(){
    $('#lover_woman').fadeOut();
  });

  $('.car_shoubousya').click(function(){
    $('#shoubousya_front').show();
  });

  $('#shoubousya_front-modal').click(function(){
    $('#shoubousya_front').fadeOut();
  });

  $('.driving').click(function(){
    $('#driving_red').show();
  });

  $('#driving_red-modal').click(function(){
    $('#driving_red').fadeOut();
  });

  $('.f1').click(function(){
    $('#f1_car').show();
  });

  $('#f1_car-modal').click(function(){
    $('#f1_car').fadeOut();
  });

  $('.car_van_sougeisya').click(function(){
    $('#car_van_sougeisya').show();
  });

  $('#car_van_sougeisya-modal').click(function(){
    $('#car_van_sougeisya').fadeOut();
  });

  $('.unten_car').click(function(){
    $('#unten_car').show();
  });

  $('#unten_car-modal').click(function(){
    $('#unten_car').fadeOut();
  });

  $('.car_lover').click(function () {
    $('#lover_man').show();
  });

  $('#lover_man-modal').click(function(){
    $('#lover_man').fadeOut();
  });

  $('.drive_date').click(function(){
    $('#date_couple_woman').show();
  });

  $('#date_couple_woman-modal').click(function(){
    $('#date_couple_woman').fadeOut();
  });

  $('.driving').click(function(){
    $('#driving_blue').show();
  });

  $('#driving_blue-modal').click(function(){
    $('#driving_blue').fadeOut();
  });

  $('.car_kogata').click(function(){
    $('#kogata_gosousya').show();
  });

  $('#kogata_gosousya-modal').click(function(){
    $('#kogata_gosousya').fadeOut();
  });

  $('.obentou_idou').click(function(){
    $('#idou_car').show();
  });

  $('#idou_car-modal').click(function(){
    $('#idou_car').fadeOut();
  });

  $('.kazoku').click(function(){
    $('#kazoku_driving').show();
  });

  $('#kazoku_driving-modal').click(function(){
    $('#kazoku_driving').fadeOut();
  });

  $('.car_coupe').click(function(){
    $('#coupe_white').show();
  });

  $('#coupe_white-modal').click(function(){
    $('#coupe_white').fadeOut();
  });

  $('.home-hover').hover(
    function() {
      $('.home-car-contents').addClass('home-car-active');
    },
    function() {
      $('.home-car-contents').removeClass('home-car-active');
    }
  );



});