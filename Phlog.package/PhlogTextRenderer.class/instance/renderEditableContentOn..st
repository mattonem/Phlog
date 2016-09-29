as yet unclassified
renderEditableContentOn: html
	| ir |
	ir := PPhlogMarkdown parse: editableContent text.
	ir accept: self with: html.
	"mkLines := editableContent text findTokens: (String with: Character cr with: Character lf).
	(mkLines notEmpty and: [ self isImage: mkLines first ])
		ifTrue: [ self renderFirstImageOn: html ].
	[ mkLines isNotEmpty ] whileTrue: [ self dispatchLineOn: html ]"