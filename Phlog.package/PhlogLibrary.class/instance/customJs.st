uploaded
customJs
	^ '
$(window).scroll(function(i){
   var scrollVar = $(window).scrollTop();
	var opacity = Math.max(0.6,( 100-scrollVar )/100);
   $(''.top-image'').css({''opacity'':opacity});
});
$(window).ready(function() {
  $(".top-image-margin").height($(".top-image").height() - (0.2 * $(".top-image").height()))
});
$(".top-image").on("load",function() {
  $(".top-image-margin").height($(".top-image").height() - (0.2 * $(".top-image").height()))
});
$(window).resize(function() {
  $(''.top-image-margin'').height($(''.top-image'').height() - 200)
});
$(document).ready(function(){
  $.adaptiveBackground.run();
});
'