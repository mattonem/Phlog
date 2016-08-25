as yet unclassified
renderEditableContentOn: html
	mkLines := editableContent text findTokens: (String with: Character cr with: Character lf).
	(mkLines notEmpty and: [ self isImage: mkLines first ])
		ifTrue: [ self renderFirstImageOn: html ].
	[ mkLines isNotEmpty ] whileTrue: [ self dispatchLineOn: html ]