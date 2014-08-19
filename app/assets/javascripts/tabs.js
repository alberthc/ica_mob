var activeTab = '';
var arrow = '';

// Handle page loading
$(window).load(function() {
  init();
  repositionArrow();
});

//Handle browser resizing
$(window).resize(function() {
    repositionArrow();
});

// Handle on click of tab
$('.tab-title').click(function () {
  var newActiveTab = '#' + $(this).find('a').attr('id');
  arrow = $(this).find('a').data('arrow');

  if (activeTab == newActiveTab) {
    return;
  }

  if (activeTab != '') {
    var oldActiveTab = activeTab;
    $(oldActiveTab).animate({
      opacity: .7
    }, 100, 'swing', function() {
      $(oldActiveTab).removeAttr('style');
    });
  }

  $(newActiveTab).css('opacity', 1);
  activeTab = newActiveTab;

  // Handle arrow movement
  var arrowPos = centerX(newActiveTab);
  $(arrow).animate({
    marginLeft: arrowPos,
  }, 300, 'swing');

  // Handle scrolling user to content after content is displayed
  /*setTimeout(function() {
    var content = $(newActiveTab).attr('href');
    $('html, body').animate({
      scrollTop: $(content).offset().top
    }, 300);
  }, 10);*/
});

function init() {
  // Find active tab on page load only
  if (activeTab == '') {
    activeTab = $('li.tab-title.active').find('a');
    arrow = $('.arrow-up');
  }

  $(activeTab).css('opacity', 1);
}

function repositionArrow() {
  // Check if elements exists before proceeding
  if (activeTab.length == 0 || arrow.length == 0) {
    return;
  }

  // Move the arrow to the correct position when browser is resized
  var adjustedArrowPos = centerX(activeTab);
  $(arrow).css('margin-left', adjustedArrowPos);
}

var centerX = function(element) {
  var offset = $(element).offset();
  var width = $(element).width();

  return offset.left + width / 2;
}
