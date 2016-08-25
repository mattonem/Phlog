rendering
renderContentOn: html
	
			editableCollection reverseDo: [ :aNews | html render: aNews ].
			html anchor
				callback: [ | newNews |
					newNews := newsCollection newContent.
					selectionCallback edit: newNews
					];
				with: 'add' 
