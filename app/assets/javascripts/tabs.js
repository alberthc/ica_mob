var activeTab = '';
$('.tab-title').click(function () {
  var newActiveTab = '#' + $(this).find('a').attr('id');

  if (activeTab == newActiveTab) {
    return;
  }

  if (activeTab != '') {
    var oldActiveTab = activeTab;
    $(oldActiveTab).animate({
      opacity: .7,
      width: "200px",
      height: "200px"
    }, 100, "swing", function() {
      $(oldActiveTab).removeAttr('style');
    });
  }

  $(newActiveTab).animate({
    width: "250px",
    height: "250px"
  }, 300, "swing");
  $(newActiveTab).css("opacity", 1);
  activeTab = newActiveTab;
});
