accessing
creationTime: aDate
	aDate isInteger ifTrue: [ ^ creationTime := DateAndTime fromUnixTime: aDate ].
	creationTime := aDate