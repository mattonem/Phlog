accessing
store
	| stream |
	self storingDirectory ensureCreateDirectory.
	storingFile deleteIfAbsent: [  ].
	stream := storingFile ensureCreateFile writeStream.
	stream nextPutAll: self text.
	stream close