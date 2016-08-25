as yet unclassified
newContent
	| newContent |
	newContent := PhlogEditableContent new storingDirectory: storeDirectory.
	collection add: newContent.
	^ newContent