as yet unclassified
fromFile: aFileReference
	| stream content instance |
	instance := self new
		creationTime: (DateAndTime fromUnixTime: aFileReference basename asNumber);
		storingFile: aFileReference.
	stream := aFileReference readStream.
	content := stream contents.
	stream close.
	^ instance text: content