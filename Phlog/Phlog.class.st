Class {
	#name : #Phlog,
	#superclass : #WAApplication,
	#classInstVars : [
		'preferences',
		'collections'
	],
	#category : #Phlog
}

{ #category : #'as yet unclassified' }
Phlog class >> defaultSetUp [
	<example>
	| adminDispatch |
	preferences := self getPreferenceFile.
	WAAdmin clearAll.
	WAAdmin register: WAFileHandler at: 'files'.
	self installPhlogOnRoot: ''.
	self installAdminPhlogOnRoot: '/admin'.
	WAAdmin defaultDispatcher defaultName: (preferences at: #tabs) first.
	(WAAdmin
		register: WAConfigurationTool
		asApplicationAt: 'admin/config') addLibrary: WAToolFiles.
	adminDispatch := (WAAdmin defaultDispatcher handlerAt: 'admin')
		yourself.
	adminDispatch configuration addParent: WAAuthConfiguration instance.
	adminDispatch
		preferenceAt: #login put: (preferences at: #login);
		preferenceAt: #passwordHash
			put: (GRPlatform current secureHashFor: (preferences at: #password));
		addFilter: WAAuthenticationFilter new.
	WAAdmin applicationDefaults
		removeParent: WADevelopmentConfiguration instance.
	(ZnZincServerAdaptor port: 8443) start
]

{ #category : #'as yet unclassified' }
Phlog class >> feeds [
	^ self getCollections
]

{ #category : #'as yet unclassified' }
Phlog class >> getCollection: aTabName [
	^ collections at: aTabName ifAbsentPut: (PhlogFeedCollection on: FileSystem workingDirectory / '..' / 'data' / aTabName).
]

{ #category : #'as yet unclassified' }
Phlog class >> getCollections [
	^ collections 
]

{ #category : #'as yet unclassified' }
Phlog class >> getPreferenceFile [
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
			(#tabs -> {'News' . 'About' . 'Friends'}).
			(#uacctGoogle -> '')} asDictionary.
			wstream := file writeStream.
			(NeoJSONWriter on: wstream)
				prettyPrint: true;
				nextPut: dict.
			wstream close.
			dict ]
]

{ #category : #'as yet unclassified' }
Phlog class >> initialize [
	collections := Dictionary new.

]

{ #category : #'as yet unclassified' }
Phlog class >> installAdminPhlogOnRoot: root [
	| handler |
	(preferences at: #tabs)
		do: [ :aTabName | 
			handler := WAAdmin
				register: PhlogAdminFeedPage
				asApplicationAt: root , '/' , aTabName.
			handler addLibrary: JQDeploymentLibrary.
			handler addLibrary: PhlogLibrary.
			handler addLibrary: TBSDeploymentLibrary.
			handler configuration
				addParent: PhlogFeedPageConfiguration instance.
			handler configuration at: #feed put: (self getCollection: aTabName).
			handler configuration
				at: #uacctGoogle
				put: (preferences at: #uacctGoogle).
			handler configuration at: #title put: (preferences at: #title) ]
]

{ #category : #'as yet unclassified' }
Phlog class >> installPhlogOnRoot: root [
	| handler |
	(preferences at: #tabs)
		do: [ :aTabName | 
			handler := WAAdmin register: PhlogFeedPage asApplicationAt: root , '/' , aTabName.
			handler addLibrary: JQDeploymentLibrary.
			handler addLibrary: PhlogLibrary.
			handler addLibrary: TBSDeploymentLibrary.
			handler configuration addParent: PhlogFeedPageConfiguration instance.
			handler configuration at: #feed put: (self getCollection: aTabName ).
			handler configuration at: #uacctGoogle put: (preferences at: #uacctGoogle).
			handler configuration at: #title put: (preferences at: #title) ]
]
