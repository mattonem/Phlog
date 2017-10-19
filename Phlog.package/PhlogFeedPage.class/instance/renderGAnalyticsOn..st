rendering
renderGAnalyticsOn: html
	(self application preferenceAt: #uacctGoogle) isEmptyOrNil ifTrue: [ ^ self ].
	html script: 'var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src=''" + gaJsHost + "google-analytics.com/ga.js'' type=''text/javascript''%3E%3C/script%3E"));'.
	html script: 'var pageTracker = _gat._getTracker(', (self application preferenceAt: #uacctGoogle) printString, ');
pageTracker._initData();
pageTracker._trackPageview();'