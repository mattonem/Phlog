as yet unclassified
updateEditables
	editableCollection := newsCollection
		collect: [ :aNews | 
			PhlogAdminTextRenderer new
				editableContent: aNews;
				callback: selectionCallback ]