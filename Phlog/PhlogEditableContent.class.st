Class {
	#name : #PhlogEditableContent,
	#superclass : #Object,
	#instVars : [
		'order',
		'text',
		'creationTime',
		'storingDirectory',
		'storingFile'
	],
	#category : #Phlog
}

{ #category : #'as yet unclassified' }
PhlogEditableContent class >> fromFile: aFileReference [
	| stream  instance |
	
	stream := aFileReference readStream.
	instance := self new readFromJson: stream.
	stream close.
	
	instance
		creationTime: (DateAndTime fromUnixTime: aFileReference basename asNumber);
		storingFile: aFileReference.
	^ instance
]

{ #category : #'as yet unclassified' }
PhlogEditableContent class >> neoJsonMapping: mapper [
	"For inheritance mapping to work, the schema/classname must be self,
	but the instance variables have to be enumerated manually per class"

	mapper
		for: self
			do: [ :mapping | 
					mapping
						mapProperty: #text getter: [ :object | object text ] setter: [ :object :value | object text: value ];
						mapProperty: #order getter: [ :object | object order ] setter: [ :object :value | object order: value ];
						mapProperty: #creationTime
							getter: [ :object | object creationTime ]
							setter: [ :object :value | object creationTime: (DateAndTime fromUnixTime: value) ] ];
		for: DateAndTime customDo: [ :mapping | mapping encoder: [ :time | time asUnixTime ] ]
]

{ #category : #accessing }
PhlogEditableContent >> = anObject [
	^ (anObject class = self class) and: [ self key = anObject key ]
]

{ #category : #accessing }
PhlogEditableContent >> creationTime [
	^ creationTime
]

{ #category : #accessing }
PhlogEditableContent >> creationTime: aDate [
	aDate isInteger ifTrue: [ ^ creationTime := DateAndTime fromUnixTime: aDate ].
	creationTime := aDate
]

{ #category : #accessing }
PhlogEditableContent >> delete [
	storingFile delete.

]

{ #category : #accessing }
PhlogEditableContent >> hash [
	^ self class hash xor: self key
]

{ #category : #accessing }
PhlogEditableContent >> initialize [
	super initialize.
	creationTime := DateAndTime now.
	text := ''
]

{ #category : #accessing }
PhlogEditableContent >> key [
	^ creationTime asUnixTime
]

{ #category : #accessing }
PhlogEditableContent >> moveToTop [
	^ order := SmallInteger maxVal
]

{ #category : #accessing }
PhlogEditableContent >> order [
	^ order ifNil: [ order := SmallInteger maxVal ]
]

{ #category : #accessing }
PhlogEditableContent >> order: anObject [
	order := anObject.

]

{ #category : #accessing }
PhlogEditableContent >> readFromJson: stream [
	^ (NeoJSONReader on: stream) nextAs: self class
]

{ #category : #accessing }
PhlogEditableContent >> store [
	| stream |
	self storingDirectory ensureCreateDirectory.
	storingFile deleteIfAbsent: [  ].
	stream := storingFile ensureCreateFile writeStream.
	(NeoJSONWriter on: stream) prettyPrint: true; nextPut: self.
	stream close
]

{ #category : #'as yet unclassified' }
PhlogEditableContent >> storingDirectory [
	^ storingFile parent
]

{ #category : #accessing }
PhlogEditableContent >> storingDirectory: aFileReference [
	storingFile := aFileReference / self key asString.
		self store
]

{ #category : #accessing }
PhlogEditableContent >> storingFile: aFileReference [
	storingFile := aFileReference.
	
]

{ #category : #accessing }
PhlogEditableContent >> text [
	^ text
]

{ #category : #accessing }
PhlogEditableContent >> text: anObject [
	text := anObject.
	storingFile ifNotNil: [  
	self store]
]
