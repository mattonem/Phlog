rendering
updateEditables
	editableCollection := newsCollection
		collect: [ :aNews | PhlogTextRenderer new editableContent: aNews; callback: selectionCallback ]
