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
    setTimeout(function() { i++; if (i < n) { initTopImageOffset(); } }, 50);
    console.log(''initloop'');
    return};
  $(".top-image-margin").height($(".top-image").height() - (0.2 * $(".top-image").height()))
};
$(document).ready(function() {
  initTopImageOffset();
});
$(window).resize(function() {
  $(''.top-image-margin'').height($(''.top-image'').height() - 200)
});
$(document).ready(function(){
  $.adaptiveBackground.run();
});
'
