as yet unclassified
getPreferenceFile
	| file |
	file := './preferences' asFileReference.
	^ file exists
		ifTrue: [ 
			(NeoJSONReader on: file readStream)
				propertyNamesAsSymbols: true;
				next ]
		ifFalse: [ { #login -> 'admin'. #password -> 'password'. #title -> 'Seaside' } asDictionary ]