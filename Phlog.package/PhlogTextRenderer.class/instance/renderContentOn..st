as yet unclassified
renderContentOn: html
	html
		card: [ editableText imageUrl notNil
				ifTrue: [ html cardImgTop url: editableText imageUrl ].
			html
				cardBlock: [ (editableText text findTokens: (String with: Character cr with: Character lf))
						do: [ :para | 
							para first = $#
								ifTrue: [ html heading: (para trimLeft: [ :char | char = $# ]) ]
								ifFalse: [ html paragraph: para ] ].
					html anchor
						class: 'small';
						callback: [ editableText editMode: true.
							editableText getSelected ];
						with: 'edit' ] ]