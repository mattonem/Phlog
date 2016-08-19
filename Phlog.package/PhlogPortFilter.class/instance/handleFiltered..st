as yet unclassified
handleFiltered: aRequestContext 
	(aRequestContext request url port = 8443) 
		ifTrue: [ super handleFiltered: aRequestContext ]
		ifFalse: [
			aRequestContext responseGenerator
				notFound;
				respond ]