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

  $('.clickable').on('click', function() {
    var link = $(this).data("href");
    window.location.href = link;
  });

  $('.scrollable').on('click', function() {
    var scrollId = $(this).data("scroll-id");
    $('html, body').animate({
      scrollTop: $(scrollId).offset().top
    }, 300);
  });

  /* HOVER EVENTS */

  var isAnimatingClickable = false;
  $('.clickable').hover(function() {
    //console.log("on enter = " + isAnimatingClickable);
    // mouse enter event
    if (!isAnimatingClickable) {
      isAnimatingClickable = true;
      var color = $(this).css('background-color');
      var newColor = LightenDarkenColor(rgb2hex(color), -20);
      $(this).stop().animate({
        backgroundColor: newColor
      }, 0, function() {
        isAnimatingClickable = false;
        $(this).css('background-color', newColor);
      });
    }
  }, function(){
    //console.log("on exit = " + isAnimatingClickable);
    // mouse leave event
    if (!isAnimatingClickable) {
      isAnimatingClickable = true;
      var color = $(this).css('background-color');
      var newColor = LightenDarkenColor(rgb2hex(color), 20);
      $(this).stop().animate({
        backgroundColor: newColor
      }, 0, function() {
        isAnimatingClickable = false;
        $(this).css('background-color', newColor);
      });
    }
  });

  /*$(".clickable").bind("mouseover", function() {
    var color = $(this).css("background-color");
    var newColor = LightenDarkenColor(rgb2hex(color), -20);

    $(this).animate({
      backgroundColor: newColor
    }, 300);

    $(this).bind("mouseout", function() {
      //$(this).css("background-color", color);
      $(this).animate({
        backgroundColor: color
      }, 300);
    });
  });*/

});

/* HELPER FUNCTIONS */

function resizeCfSquares() {
  var squares = $('.cf');
  var theWidth = $(squares[0]).width();

  $.each(squares, function(i, val) {
    //var width = $(val).width();
    $(val).css('height', theWidth);
  });
}

// Lighten or darken color given in hex format
function LightenDarkenColor(col, amt) {
  var usePound = false;

  if (col[0] == "#") {
    col = col.slice(1);
    usePound = true;
  }

  var num = parseInt(col,16);

  var r = (num >> 16) + amt;

  if (r > 255) r = 255;
  else if  (r < 0) r = 0;

  var b = ((num >> 8) & 0x00FF) + amt;

  if (b > 255) b = 255;
  else if  (b < 0) b = 0;

  var g = (num & 0x0000FF) + amt;

  if (g > 255) g = 255;
  else if (g < 0) g = 0;

  return (usePound?"#":"") + (g | (b << 8) | (r << 16)).toString(16);
}

// Convert rgb to hex
function rgb2hex(rgb) {
  if (/^#[0-9A-F]{6}$/i.test(rgb)) return rgb;

  rgb = rgb.match(/^rgb\((\d+),\s*(\d+),\s*(\d+)\)$/);
  function hex(x) {
    return ("0" + parseInt(x).toString(16)).slice(-2);
  }
  return "#" + hex(rgb[1]) + hex(rgb[2]) + hex(rgb[3]);
}
