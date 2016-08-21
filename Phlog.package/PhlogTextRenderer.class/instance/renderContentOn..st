as yet unclassified
renderContentOn: html
	mkLines := editableContent text findTokens: (String with: Character cr with: Character lf).
	html
		card: [ (mkLines notEmpty and: [ self isImage: mkLines first ])
				ifTrue: [ self renderFirstImageOn: html ].
			[ mkLines isNotEmpty ] whileTrue: [ self dispatchLineOn: html ].
			html
				cardBlock: [ html anchor
						class: 'card-link small';
						callback: [ callback selected: editableContent  ];
						with: 'view'.
					html anchor
						class: 'card-link small';
						callback: [ callback edit: editableContent ];
						with: 'edit'.
					html anchor
						class: 'card-link small';
						callback: [ editableText remove ];
						with: 'remove' ] ]