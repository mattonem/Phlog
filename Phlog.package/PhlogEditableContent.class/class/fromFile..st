as yet unclassified
fromFile: aFileReference
	| stream  instance |
	
	stream := aFileReference readStream.
	instance := self new readFromJson: stream.
	stream close.
	
	instance
		creationTime: (DateAndTime fromUnixTime: aFileReference basename asNumber);
		storingFile: aFileReference.
	^ instance