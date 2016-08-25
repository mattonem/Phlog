as yet unclassified
testRenderImage
	| aString aContent renderer |
	aContent := PhlogEditableContent new text: 'paragraph' , Character cr asString , '!(image)[url]'.
	renderer := PhlogTextRenderer new editableContent: aContent.
	aString := WAHtmlCanvas builder
		documentClass: WAHtmlDocument;
		rootClass: WAHtmlRoot;
		fullDocument: false;
		render: [ :html | renderer renderEditableContentOn: html ].
	self assert: aString equals: '<div class="card-block"><p>paragraph</p></div><img alt="image" class="img-fluid" src="url"/>'