rendering
renderGAnalyticsOn: html
	self class uacct isEmptyOrNil ifTrue: [ ^ self ].
	html script: 'var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src=''" + gaJsHost + "google-analytics.com/ga.js'' type=''text/javascript''%3E%3C/script%3E"));'.
	html script: 'var pageTracker = _gat._getTracker(', self class uacct printString, ');
pageTracker._initData();
pageTracker._trackPageview();'