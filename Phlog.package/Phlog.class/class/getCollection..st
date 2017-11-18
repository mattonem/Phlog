as yet unclassified
getCollection: aTabName
	^ collections at: aTabName ifAbsentPut: (PhlogFeedCollection on: aTabName).