instance creation
fromDictionary: aDictionary
	^ (NeoJSONReader on: (NeoJSONWriter toString: aDictionary) readStream) nextAs: self