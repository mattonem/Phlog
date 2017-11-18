📂
readFromJson: stream
	^ (NeoJSONReader on: stream) nextAs: self class