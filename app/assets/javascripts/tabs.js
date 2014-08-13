var activeTab = '';

$('.tab-title').click(function () {
  var newActiveTab = '#' + $(this).find('a').attr('id');
  var arrow = $(this).find('a').data('arrow');

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
  $(arrow).css('visibility', 'visible');
  var arrowPos = centerX(newActiveTab);
  $(arrow).animate({
    marginLeft: arrowPos,
  }, 300, 'swing');

  // Handle scrolling user to content after content is displayed
  setTimeout(function() {
    var content = $(newActiveTab).attr('href');
    $('html, body').animate({
      scrollTop: $(content).offset().top
    }, 300);
  }, 10);
});

var centerX = function(element) {
  var offset = $(element).offset();
  var width = $(element).width();

  return offset.left + width / 2;
}
