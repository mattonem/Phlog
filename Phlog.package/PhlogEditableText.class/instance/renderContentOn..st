accessing
renderContentOn: html
	editMode
		ifTrue: [ html render: (PhlogTextEditor new editableText: self) ]
		ifFalse: [ html
				render:
					(PhlogTextRenderer new
						editableText: self) ]