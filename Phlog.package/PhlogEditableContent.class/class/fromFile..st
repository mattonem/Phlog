as yet unclassified
fromFile: aFileReference
	| stream content instance |
	instance := self new.
	stream := aFileReference readStream.
	content := stream contents.
	stream close.
	instance text: content.
	instance
		creationTime: (DateAndTime fromUnixTime: aFileReference basename asNumber);
		storingFile: aFileReference.
		^ instance