Class {
	#name : #PhlogDirectFileLibrary,
	#superclass : #WAAbstractFileLibrary,
	#category : #Phlog
}

{ #category : #'as yet unclassified' }
PhlogDirectFileLibrary class >> asSelector:aString [
	^ aString
]

{ #category : #private }
PhlogDirectFileLibrary >> asFilename: aString [ 
	^ aString 
]

{ #category : #'as yet unclassified' }
PhlogDirectFileLibrary >> fileSelectors [
	^ (FileSystem / 'var' / 'www') files collect: [ :file | self urlOfFile: file ]
]

{ #category : #private }
PhlogDirectFileLibrary >> urlOf: aSymbol [

	^ '/directfiles/', aSymbol 
]

{ #category : #'as yet unclassified' }
PhlogDirectFileLibrary >> urlOfFile: aFileReference [ 
	^ String withAll: (((aFileReference pathString findTokens: '/') allButFirst: 2) concatenation)  
]
