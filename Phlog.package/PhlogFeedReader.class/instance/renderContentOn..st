rendering
renderContentOn: html
	editableCollection reverseDo: [ :aNews | html render: aNews ].
	