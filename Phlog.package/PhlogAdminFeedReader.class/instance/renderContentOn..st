as yet unclassified
renderContentOn: html
	super renderContentOn: html.
	html anchor
		callback: [ | newNews |
			newNews := newsCollection newContent.
			selectionCallback edit: newNews ];
		with: 'add'