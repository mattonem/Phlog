accessing
store
	| stream |
	self storingDirectory ensureCreateDirectory.
	storingFile deleteIfAbsent: [  ].
	stream := storingFile ensureCreateFile writeStream.
	(NeoJSONWriter on: stream) nextPut: self.
	stream close