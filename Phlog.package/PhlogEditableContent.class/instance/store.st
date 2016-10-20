accessing
store
	| stream jsonFolder |
	self storingDirectory ensureCreateDirectory.
	storingFile deleteIfAbsent: [  ].
	stream := storingFile ensureCreateFile writeStream.
	stream nextPutAll: self text.
	stream close.
	jsonFolder := storingFile path relativeToPath: (storingFile parent parent) path.
	jsonFolder := FileSystem workingDirectory / 'jsonData' resolvePath: jsonFolder.
	(jsonFolder / '..' ) ensureCreateDirectory.
	jsonFolder deleteIfAbsent: [  ].
	stream := jsonFolder ensureCreateFile writeStream.
	(NeoJSONWriter on: stream)
      prettyPrint: true;
      for: self class
			do: [ :mapping | mapping mapInstVars: #(text creationTime)];
		for: DateAndTime
         customDo: [ :mapping | mapping encoder: #printString ];
      nextPut: self.
	stream close.
