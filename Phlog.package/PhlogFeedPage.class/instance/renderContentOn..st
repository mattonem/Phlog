rendering
renderContentOn: html
	html image
		url: PhlogDirectFileLibrary / 'Arb-c.jpg';
		class: 'top-image'.
	html div class: 'log top-image-margin'.
	html
		container: [ html render: navbar..
			html render: content ]