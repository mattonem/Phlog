Class {
	#name : #PhlogFeedPage,
	#superclass : #WAComponent,
	#instVars : [
		'feed',
		'content',
		'navbar'
	],
	#category : 'Phlog-SeasideComponent'
}

{ #category : #'as yet unclassified' }
PhlogFeedPage class >> canBeRoot [
	^ true
]

{ #category : #rendering }
PhlogFeedPage >> children [
	^ super children asOrderedCollection
		add: content;
		add: navbar;
		yourself
]

{ #category : #rendering }
PhlogFeedPage >> edit: aNews [
	content := PhlogTextEditor new
										editableContent: aNews;
										callback: self
]

{ #category : #rendering }
PhlogFeedPage >> initContent [
	feed updateContentCollection.
	content := PhlogFeedReader new
		newsCollection: feed;
		selectionCallback: self;
		feedsPerPage: (self application preferenceAt: #feedsPerPage).
]

{ #category : #rendering }
PhlogFeedPage >> initialRequest: aRequest [
	super initialRequest: aRequest.
	[self selected: (feed forKey: (NumberParser parse: aRequest url path last))] on: Error do: [  ]
]

{ #category : #rendering }
PhlogFeedPage >> initialize [
	super initialize.
	feed := self application preferenceAt: #feed.
	self initContent.
	navbar := PhlogNavBar new.
]

{ #category : #category }
PhlogFeedPage >> remove: aNews [
	feed remove: aNews.
	self initContent
]

{ #category : #rendering }
PhlogFeedPage >> renderBackgroundOn: html [
	html image
		url: 'files/FSFileLibrary/background.jpg';
		class: 'top-image'
]

{ #category : #rendering }
PhlogFeedPage >> renderContentOn: html [
	self renderBackgroundOn: html.
	html div class: 'log top-image-margin'.
	html
		tbsContainer: [ html render: navbar.
			html render: content ]
]

{ #category : #rendering }
PhlogFeedPage >> renderGAnalyticsOn: html [
	| tocken |
	(self application preferenceAt: #uacctGoogle) isEmptyOrNil
		ifTrue: [ ^ self ].
	tocken := self application preferenceAt: #uacctGoogle.
	html script
		attributeAt: 'async' put: true;
		url: 'https://www.googletagmanager.com/gtag/js?id=' , tocken.
	html script
		with:
			'window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag(''js'', new Date());
  gtag(''config'', ''' , tocken , ''');'
]

{ #category : #rendering }
PhlogFeedPage >> selected [
	^ (content isKindOf: PhlogFeedReader) not
]

{ #category : #rendering }
PhlogFeedPage >> selected: aNews [
	content := PhlogTextRenderer new
										editableContent:  aNews;
										callback: self.
]

{ #category : #category }
PhlogFeedPage >> top: aNews [
	aNews moveToTop.
	feed sort.
	feed storeAllContent.
	self initContent
]

{ #category : #rendering }
PhlogFeedPage >> unselect [
	self initContent
]

{ #category : #rendering }
PhlogFeedPage >> updateRoot: anHtmlRoot [
	super updateRoot: anHtmlRoot.
	anHtmlRoot title: (self application preferenceAt: #title).
	self renderGAnalyticsOn: anHtmlRoot
]

{ #category : #rendering }
PhlogFeedPage >> updateUrl: aUrl [
	super updateUrl: aUrl.
	self selected
		ifTrue: [ aUrl addToPath: content editableContent key asString ]
]
