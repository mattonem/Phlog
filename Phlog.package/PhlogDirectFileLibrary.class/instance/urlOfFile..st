as yet unclassified
urlOfFile: aFileReference 
	^ String withAll: (((aFileReference pathString findTokens: '/') allButFirst: 2) concatenation)  