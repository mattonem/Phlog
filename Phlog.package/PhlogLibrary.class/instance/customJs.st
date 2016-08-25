uploaded
customJs
	^ '
$(window).scroll(function(i){
   var scrollVar = $(window).scrollTop();
	var opacity = Math.max(0.6,( 100-scrollVar )/100);
   $(''.top-image'').css({''opacity'':opacity});
});
function initTopImageOffset() {
  if($(".top-image-margin").height == 0){
    setTimeout(initTopImageOffset , 50);
    console.log(''initloop'');
    return};
  var height = $(".top-image-margin").height($(".top-image").height() * 0.8);
  setTimeout(function() { confirmOffset(height) }, 100);
  
};
function confirmOffset(testHeight) {
  var height = $(".top-image-margin").height($(".top-image").height() * 0.8);
  if(height != testHeight)
    initTopImageOffset();
};

$(document).ready(function() {
  initTopImageOffset();
});
$(window).resize(function() {
  initTopImageOffset();
});
$(document).ready(function(){
  $.adaptiveBackground.run();
});
'
