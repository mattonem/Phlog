as yet unclassified
testRenderList
	| aString aContent renderer |
	aContent := PhlogEditableContent new text: '*item1'.
	renderer := PhlogTextRenderer new editableContent: aContent.
	aString := WAHtmlCanvas builder
		documentClass: WAHtmlDocument;
		rootClass: WAHtmlRoot;
		fullDocument: false;
		render: [ :html | renderer renderEditableContentOn: html ].
	self assert: aString equals: '<div class="card-block"><ul><li>item1</li></ul></div>'