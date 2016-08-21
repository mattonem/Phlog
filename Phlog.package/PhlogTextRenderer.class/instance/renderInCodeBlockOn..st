as yet unclassified
renderInCodeBlockOn: html
	html cardBlock: [ self renderTextOn: html ]
	"html
		card: [ editableText imageUrl notNil
				ifTrue: [ html cardImgTop url: editableText imageUrl ].
			html
				cardBlock: [ (editableText text findTokens: (String with: Character cr with: Character lf))
						do: [ :para | 
							para first = $#
								ifTrue: [ html heading: (para trimLeft: [ :char | char = $# ]) ]
								ifFalse: [ html paragraph: para ] ].
					html anchor
						class: 'card-link small';
						callback: [ editableText getSelected ];
						with: 'view'.
					html anchor
						class: 'card-link small';
						callback: [ editableText remove ];
						with: 'remove' ] ]"