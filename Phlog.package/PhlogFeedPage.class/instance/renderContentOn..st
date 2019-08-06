rendering
renderContentOn: html
	self renderBackgroundOn: html.
	html div class: 'log top-image-margin'.
	html
		tbsContainer: [ html render: navbar.
			html render: content ]