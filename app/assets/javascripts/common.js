$(function(){ $(document).foundation(); });

//Slow down accordion movement
$(".accordion dd ").on("click", "a:eq(0)", function (event)
      {
        var dd_parent = $(this).parent();
        var dd_this = $(this);

        if(dd_parent.hasClass('active')){
          $(".accordion dd div.content:visible").slideToggle("slow");
        }
        else
        {
          
          $(".accordion dd div.content:visible").slideToggle("slow");
          $(this).parent().find(".content").slideToggle("slow");
          $('html,body').animate({
            scrollTop: dd_this.offset().top
          }, 1000); 
        }
      });

/*
$(document).foundation();
$(".accordion").on("click", "dd:not(.active)", function (original) {
original = $(this);
  $("dd.active").find(".content").slideUp("100", function(){

  });
  $(this).find(".content").slideToggle("slow", function() {
    $('html,body').animate({
          scrollTop: original.offset().top
        }, 300);
        original.addClass("active");
        $(".accordion dd.active").not(original).removeClass("active");
  });
  });
*/
// Open clearing lightbox from text link
$('.open-clearing').on('click', function(e) {
  e.preventDefault();
  //var selector = '[data-clearing]';
  var galleryNumber = $(this).data('gallery');

  var selector = '[data-gallery-' + galleryNumber + '] li img';

  //alert(selector);

  //$('[data-clearing] li img').eq($(this).data('thumb-index')).trigger('click');
  $(selector).eq($(this).data('thumb-index')).trigger('click');
});

/* CLICK EVENTS */

// Mobile up arrow
$(document).on('click', '.mobile-scroll-top', function() {
  $('html, body').animate({
    scrollTop: 0}, 300);
});

// Close modal for IOS devices
$(document).on('click tap touchstart', '.reveal-modal-bg', function() {
  return $('[data-reveal]').foundation('reveal', 'close');
});

$(document).ready(function() {

  resizeCfSquares();

  /* CROSSFADE ANIMATION */

  $('.cf').hover(function() {
    var topContent = $(this).find('div.top');
    var bottomContent = $(this).find('div.bottom');

    topContent.css('opacity', 0);
    bottomContent.css('opacity', 1);
  }, function() {
    var topContent = $(this).find('div.top');
    var bottomContent = $(this).find('div.bottom');

    topContent.css('opacity', 1);
    bottomContent.css('opacity', 0); 
  });

  $(window).resize(function() {
    resizeCfSquares(); 
  });

  /* Click Events */

  $('.scrollable').on('click', function() {
    var scrollId = $(this).data("scroll-id");
    $('html, body').animate({
      scrollTop: $(scrollId).offset().top
    }, 300);
  });

  /* HOVER EVENTS */

  $('.clickable').hover(function() {
    // mouse enter event
    var color = $(this).css('background-color');
    //$(this).css('background-color', 'red');
  }, function(){
    // mouse leave event
    //$(this).css('background-color', 'green');
  });

});

function resizeCfSquares() {
  var squares = $('.cf');
  var theWidth = $(squares[0]).width();

  $.each(squares, function(i, val) {
    //var width = $(val).width();
    $(val).css('height', theWidth);
  });
}
