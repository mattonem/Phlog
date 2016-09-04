as yet unclassified
renderTextOn: html
	[ mkLines isNotEmpty and: [ self isText: mkLines first ] ]
		whileTrue: [ | currentLine |
			currentLine := mkLines first.
			currentLine first = $#
				ifTrue: [ html heading: (currentLine trimLeft: [ :char | char = $# ]) ]
				ifFalse: [ html paragraph: currentLine ].
			mkLines remove: currentLine ]