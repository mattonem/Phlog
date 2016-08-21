uploaded
customJs
	^ '
$(window).scroll(function(i){
   var scrollVar = $(window).scrollTop();
	var opacity = Math.max(0.6,( 100-scrollVar )/100);
   $(''.top-image'').css({''opacity'':opacity});
});
'