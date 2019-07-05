rendering
renderContentOn: html
	self renderGAnalyticsOn: html.
	html image
		url: 'files/FSFileLibrary/background.jpg';
		class: 'top-image'.
	html div class: 'log top-image-margin'.
	html
		container: [ html render: navbar..
			html render: content ]