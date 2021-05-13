Class {
	#name : #PhlogFeedPageConfiguration,
	#superclass : #WASystemConfiguration,
	#category : #Phlog
}

{ #category : #description }
PhlogFeedPageConfiguration >> describeOn: config [
	(config string: #uacctGoogle)
		comment:
			'uacct for Google Analitics';
		default: ''.
	(config integer: #feedsPerPage)
		comment:
			'Number of feeds per page';
		default: 10.
	(config list: #feed)
		options: [ self possibleFeed ];
		default: Phlog getCollections anyOne.
	(config string: #title) default: 'Phlog'
]

{ #category : #'as yet unclassified' }
PhlogFeedPageConfiguration >> possibleFeed [
	^ Phlog feeds
]
