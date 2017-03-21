as yet unclassified
visitCarousel: aPMdCarousel with: aWAHtmlCanvas
	| id |
	id := aPMdCarousel hash asString.
	aWAHtmlCanvas div
		id: id;
		class: 'carousel slide';
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
										url: url string ] ].].
					aWAHtmlCanvas anchor
						class: 'carousel-control-prev';
						url: '#' , id;
						attributeAt: 'role' put: 'button';
						with: [ aWAHtmlCanvas span
								class: 'carousel-control-prev-icon';
								attributeAt: 'aria-hidden' put: 'true'.
							aWAHtmlCanvas span
								class: 'sr-only';
								with: 'Previous' ].
					aWAHtmlCanvas anchor
						class: 'carousel-control-next';
						url: '#' , id;
						attributeAt: 'role' put: 'button';
						with: [ aWAHtmlCanvas span
								class: 'carousel-control-next-icon';
								attributeAt: 'aria-hidden' put: 'true'.
							aWAHtmlCanvas span
								class: 'sr-only';
								with: 'Next' ] ] 