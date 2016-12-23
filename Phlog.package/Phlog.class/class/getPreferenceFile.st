as yet unclassified
getPreferenceFile
	| file |
	file := '../preferences' asFileReference.
	^ file exists
		ifTrue: [ (NeoJSONReader on: file readStream)
				propertyNamesAsSymbols: true;
				next ]
		ifFalse: [ | dict wstream |
			dict := {(#login -> 'admin').
			(#password -> 'password').
			(#title -> 'Seaside').
			(#tabs -> {'News', 'About', 'Friends'})} asDictionary.
			wstream := file writeStream.
			(NeoJSONWriter on: wstream)
				prettyPrint: true;
				nextPut: dict.
			wstream close.
			dict ]