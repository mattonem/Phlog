rendering
renderContentOn: html
	
			editableCollection reverseDo: [ :aNews | html render: aNews ].
			html anchor
				callback: [ | newNews |
					newNews := newsCollection add: PhlogEditableContent new.
					selectionCallback edit: newNews
					];
				with: 'add' 