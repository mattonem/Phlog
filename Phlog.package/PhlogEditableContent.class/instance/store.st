accessing
store
	| stream |
	self storingDirectory ensureCreateDirectory.
	stream := storingFile ensureCreateFile writeStream.
	stream
		nextPutAll: self text.
	stream close