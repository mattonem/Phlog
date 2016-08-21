as yet unclassified
renderContentOn: html
	mkLines := editableText text findTokens: (String with: Character cr with: Character lf).
	html
		card: [ (mkLines notEmpty and: [ self isImage: mkLines first ])
				ifTrue: [ self renderFirstImageOn: html ].
			[ mkLines isNotEmpty ] whileTrue: [ self dispatchLineOn: html ].
			html
				cardBlock: [ html anchor
						class: 'card-link small';
						callback: [ editableText getSelected ];
						with: 'view'.
					html anchor
						class: 'card-link small';
						callback: [ editableText getSelected.
							editableText editMode: true ];
						with: 'edit'.
					html anchor
						class: 'card-link small';
						callback: [ editableText remove ];
						with: 'remove' ] ]