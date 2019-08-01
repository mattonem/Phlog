as yet unclassified
renderAddButton: html
	html div
		class: 'btn-group';
		with: [ html anchor
				class: 'btn btn-default';
				callback: [ | newNews |
					newNews := newsCollection newContent.
					selectionCallback edit: newNews ];
				with: 'add' ]