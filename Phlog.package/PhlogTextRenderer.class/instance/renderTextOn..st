as yet unclassified
renderTextOn: html
	| selector |
	[ mkLines isNotEmpty and: [ self isText: mkLines first ] ]
		whileTrue: [ | currentLine |
			currentLine := mkLines first.
			selector := (self dispatchTextArray at: (currentLine first) ifAbsent: #paragraphOn:).
				self perform: selector with: html ]