rendering
renderGAnalyticsOn: html
	| tocken |
	(self application preferenceAt: #uacctGoogle) isEmptyOrNil
		ifTrue: [ ^ self ].
	tocken := (self application preferenceAt: #uacctGoogle) printString.
	html script
		attributeAt: 'async' put: true;
		url: 'https://www.googletagmanager.com/gtag/js?id=', tocken.
	html script
		with:
			'window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag(''js'', new Date());
  gtag(''config'', ''',tocken,''');'