as yet unclassified
visitCarousel: aPMdCarousel with: aWAHtmlCanvas
	| id |
	id := aPMdCarousel hash asString.
	aWAHtmlCanvas div
		class: 'container';
		with: [ aWAHtmlCanvas div class: 'col-sm-2'.
			aWAHtmlCanvas div
				id: id;
				class: 'carousel slide col-sm-8';
				attributeAt: 'data-ride' put: 'carousel';
				with: [ aWAHtmlCanvas div
						class: 'carousel-inner';
						attributeAt: 'role' put: 'listbox';
						with: [ aWAHtmlCanvas div
								class: 'carousel-item active';
								with: [ aWAHtmlCanvas image
										altText: aPMdCarousel altText string;
										url: aPMdCarousel urls first string ].
							aPMdCarousel urls allButFirst
								do: [ :url | 
									aWAHtmlCanvas div
										class: 'carousel-item';
										with: [ aWAHtmlCanvas image
												altText: aPMdCarousel altText string;
												url: url string ] ] ].
					aWAHtmlCanvas paragraph
						class: ' text-center';
						with: [ aWAHtmlCanvas anchor
								class: 'carousel-control-prev';
								url: '#' , id;
								onClick: '$(''#' , id , ''').carousel(''prev'')';
								with: '<'.
							aWAHtmlCanvas anchor
								class: 'carousel-control-next';
								url: '#' , id;
								onClick: '$(''#' , id , ''').carousel(''next'')';
								with: '>' ] ] ]