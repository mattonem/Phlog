as yet unclassified
visitCarousel: aPMdCarousel with: aWAHtmlCanvas
	aWAHtmlCanvas tbsContainerFluid 
		with: [ aWAHtmlCanvas div class: 'col-sm-2'.
			aWAHtmlCanvas div
				class: 'slick-carousel slide col-sm-8';
				attributeAt: 'data-ride' put: 'carousel';
				with: [ aPMdCarousel urls
						do: [ :url | 
							aWAHtmlCanvas div
								class: 'slick-carousel-item';
								with: [ aWAHtmlCanvas tbsImage
										class: 'img-responsive center';
										beRounded;
										altText: aPMdCarousel altText string;
										url: url string ] ] ] ]