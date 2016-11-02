as yet unclassified
newContent
	| newContent |
	newContent := PhlogEditableContent new storingDirectory: storeDirectory.
	newContent order: self contentCount.
	collection add: newContent.
	^ newContent