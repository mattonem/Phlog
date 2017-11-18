as yet unclassified
newContent
	| newContent |
	newContent := PhlogEditableContent new .
	newContent order: self contentCount.
	collection add: newContent.
	^ newContent