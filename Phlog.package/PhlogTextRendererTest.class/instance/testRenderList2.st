as yet unclassified
testRenderList2
	| aString aContent renderer |
	aContent := PhlogEditableContent new text: '*item1' , Character cr asString , '*item2'.
	renderer := PhlogTextRenderer new editableContent: aContent.
	aString := WAHtmlCanvas builder
		documentClass: WAHtmlDocument;
		rootClass: WAHtmlRoot;
		fullDocument: false;
		render: [ :html | renderer renderEditableContentOn: html ].
	self assert: aString equals: '<div class="card-block"><ul><li>item1</li><li>item2</li></ul></div>'