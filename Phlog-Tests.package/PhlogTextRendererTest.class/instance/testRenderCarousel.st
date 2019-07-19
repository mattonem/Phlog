as yet unclassified
testRenderCarousel
	| aString aContent renderer |
	aContent := PhlogEditableContent new text: 'paragraph' , Character cr asString , '![carousel](url)(url2)'.
	renderer := PhlogTextRenderer new editableContent: aContent.
	aString := WAHtmlCanvas builder
		documentClass: WAHtmlDocument;
		rootClass: WAHtmlRoot;
		fullDocument: false;
		render: [ :html | renderer renderEditableContentOn: html ].
	self assert: aString equals: '<div class="card-block"><p>paragraph</p></div><div class="container"><div class="col-sm-2"></div><div class="slick-carousel slide col-sm-8" data-ride="carousel"><div class="slick-carousel-item"><img alt="carousel" class="d-block img-fluid" src="url"/></div><div class="slick-carousel-item"><img alt="carousel" class="d-block img-fluid" src="url2"/></div></div></div>'