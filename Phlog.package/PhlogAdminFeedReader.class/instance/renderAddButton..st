as yet unclassified
renderAddButton: html
	html
		tbsButtonGroup: [ html anchor
				class: 'btn';
				callback: [ | newNews |
					newNews := newsCollection newContent.
					selectionCallback edit: newNews ];
				with: 'add' ]