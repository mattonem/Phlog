as yet unclassified
updateContentCollection
	collection := (storeDirectory files
		collect: [ :file | PhlogEditableContent fromFile: file ]) asOrderedCollection