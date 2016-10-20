as yet unclassified
fromFile: aFileReference
	| instance |
	instance := (NeoJSONReader on: aFileReference readStream)
   		mapInstVarsFor: self;
   		nextAs: self.
	^ instance
