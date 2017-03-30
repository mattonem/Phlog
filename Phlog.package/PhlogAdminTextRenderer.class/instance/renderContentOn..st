as yet unclassified
renderContentOn: html
	html
		card: [ self renderEditableContentOn: html.
			html
				cardBlock: [ html anchor
						class: 'card-link small';
						url: (self session url addToPath: editableContent key asString);
						with: 'view'.
					html anchor
						class: 'card-link small';
						callback: [ callback edit: editableContent ];
						with: 'edit'.
					html anchor
						class: 'card-link small';
						callback: [ callback remove: editableContent ];
						with: 'remove'.
					html anchor
						class: 'card-link small';
						callback: [ callback top: editableContent ];
						with: 'top' ] ]