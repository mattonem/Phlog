as yet unclassified
renderContentOn: html
	html
		card: [ self renderEditableContentOn: html.
			html
				cardBlock:  [ html anchor
						class: 'card-link small';
						url: (self session url addToPath: editableContent key asString);
						with: 'view' ] ]