as yet unclassified
schemeForPort: aPort
	^ { 8443 -> 'https'. 8080 -> 'http' } asDictionary at: aPort