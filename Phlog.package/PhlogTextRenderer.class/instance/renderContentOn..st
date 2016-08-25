as yet unclassified
renderContentOn: html
	html
		card: [ self renderEditableContentOn: html.
			html
				cardBlock: [ html anchor
						class: 'card-link small';
						callback: [ callback selected: editableContent ];
						with: 'view'.
					html anchor
						class: 'card-link small';
						callback: [ callback edit: editableContent ];
						with: 'edit'.
					html anchor
						class: 'card-link small';
						callback: [ callback remove: editableContent ];
						with: 'remove' ] ]