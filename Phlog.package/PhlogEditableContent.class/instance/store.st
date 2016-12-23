accessing
store
	| stream |
	self storingDirectory ensureCreateDirectory.
	storingFile deleteIfAbsent: [  ].
	stream := storingFile ensureCreateFile writeStream.
	(NeoJSONWriter on: stream) prettyPrint: true; nextPut: self.
	stream close