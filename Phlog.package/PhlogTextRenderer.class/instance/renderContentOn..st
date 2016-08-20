as yet unclassified
renderContentOn: html
	(editableText string findTokens: Character cr)
		do: [ :para | 
			para first = $#
				ifTrue: [ html heading: (para trimLeft: [ :char | char = $# ]) ]
				ifFalse:[
			html paragraph: para ]]