$(function(){ $(document).foundation(); });

//Slow down accordion movement
$(".accordion dd").on("click", "a:eq(0)", function (event)
      {
        var dd_parent = $(this).parent();

        if(dd_parent.hasClass('active'))
          $(".accordion dd div.content:visible").slideToggle("slow");
        else
        {
          $(".accordion dd div.content:visible").slideToggle("slow");
          $(this).parent().find(".content").slideToggle("slow");
        }
      });

/*$(document).foundation();
$(".accordion").on("click", "dd:not(.active)", function (original) {
original = $(this);
  $("dd.active").find(".content").slideUp("800", function(){

  });
  $(this).find(".content").slideToggle("slow", function() {
    $('html,body').animate({
          scrollTop: original.offset().top
        }, 1000);
        original.addClass("active");
        $(".accordion dd.active").not(original).removeClass("active");
  });
  });*/

// Open clearing lightbox from text link
$('.open-clearing').on('click', function(e) {
  e.preventDefault();
  $('[data-clearing] li img').eq($(this).data('thumb-index')).trigger('click');
});
