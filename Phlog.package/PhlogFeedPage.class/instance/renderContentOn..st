rendering
renderContentOn: html
	html image
		url: PhlogDirectFileLibrary / 'Arb-c.jpg';
		class: 'top-image'.
	html div class: 'log top-image-margin'.
	html
		container: [ html navigation
				style: 'margin-bottom: 10px';
				class: 'navbar navbar-light bg-faded';
				with: [ html div
						class: 'nav navbar-nav';
						with: [ html anchor
								class: 'nav-item nav-link active';
								url: (self session url parsePath: '/phlog');
								with: 'News'.
							html anchor
								class: 'nav-item nav-link';
								url: (self session url parsePath: '/about');
								with: 'About' ] ].
			html render: content ]