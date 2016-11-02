as yet unclassified
updateContentCollection
	collection := (storeDirectory files
		collect: [ :file | PhlogEditableContent fromFile: file ]) asSortedCollection: [ :edit1 :edit2 | edit1 order < edit2 order ]