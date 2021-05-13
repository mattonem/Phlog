Class {
	#name : #PhlogNavBar,
	#superclass : #WAComponent,
	#instVars : [
		'feed',
		'content'
	],
	#category : 'Phlog-SeasideComponent'
}

{ #category : #'as yet unclassified' }
PhlogNavBar >> categories [
	^ Phlog getCollections keys
		collect: [ :aCollectionName | (self application parent basicUrl addToPath: '/' , aCollectionName) asString -> aCollectionName ]
]

{ #category : #'as yet unclassified' }
PhlogNavBar >> defaultCategory [
	^ '/phlog' -> 'News'
]

{ #category : #'as yet unclassified' }
PhlogNavBar >> isActiveCategory: anAssociation [
	^ self application basicUrl asString = anAssociation key
]

{ #category : #'as yet unclassified' }
PhlogNavBar >> renderOn: html [
	html navigation
		class: 'navbar navbar-default';
		with: [ html tbsNav
				beNavbarNavigation;
				with: [ self categories
						associationsDo: [ :anAssociation | 
							(self isActiveCategory: anAssociation)
								ifTrue: [ html tbsNavItem beActive
										with: [ html anchor
												url: (self session url parsePath: anAssociation key);
												with: anAssociation value ] ]
								ifFalse: [ html tbsNavItem
										with: [ html anchor
												url: (self session url parsePath: anAssociation key);
												with: anAssociation value ] ] ] ] ]
]
