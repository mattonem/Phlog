rendering
renderContentOn: html
	self renderGAnalyticsOn: html.
	self renderBackgroundOn: html.
	html div class: 'log top-image-margin'.
	html
		container: [ html render: navbar.
			html render: content ]