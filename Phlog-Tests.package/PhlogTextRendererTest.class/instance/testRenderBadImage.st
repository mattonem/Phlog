as yet unclassified
testRenderBadImage
	| aString aContent renderer |
	aContent := PhlogEditableContent new
		text: 'paragraph' , Character cr asString , '!(imageurl]'.
	renderer := PhlogTextRenderer new editableContent: aContent.
	aString := WAHtmlCanvas builder
		documentClass: WAHtmlDocument;
		rootClass: WAHtmlRoot;
		fullDocument: false;
		render: [ :html | renderer renderEditableContentOn: html ].
	self assert: aString equals: '<div class="card-block"><p>paragraph</p><p>!(imageurl]</p></div>'