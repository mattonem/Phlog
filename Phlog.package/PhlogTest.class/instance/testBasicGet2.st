as yet unclassified
testBasicGet2
	| req anchors edit req2 |
	req := Soup
		fromString: (ZnEasy get: 'http://localhost:8080') contents.
	anchors := ((req
		findAllTagsByClass: 'card') at: 1)
		findAllTags: 'a'.
	edit := (anchors
		select:
			[ :ancho | (ancho findString: 'edit') notNil ])
		at: 1.
	req2 := 'http://localhost:8080'
		, (edit attributeAt: 'href').
	self assert: (ZnEasy get: req2) isSuccess
