rendering
updateEditables
	editableCollection := newsCollection
		collect: [ :aNews | PhlogEditableText new news: aNews ]