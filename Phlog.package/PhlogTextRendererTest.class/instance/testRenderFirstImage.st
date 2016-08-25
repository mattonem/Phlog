as yet unclassified
testRenderFirstImage
	| aString aContent renderer |
	aContent := PhlogEditableContent new text: '!(image)[url]'.
	renderer := PhlogTextRenderer new editableContent: aContent.
	aString := WAHtmlCanvas builder
		documentClass: WAHtmlDocument;
		rootClass: WAHtmlRoot;
		fullDocument: false;
		render: [ :html | renderer renderEditableContentOn: html ].
	self assert: aString equals: '<img alt="image" class="img-fluid card-img-top img-fluid" src="url"/>'