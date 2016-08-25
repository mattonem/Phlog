as yet unclassified
testBasicGet2
	| req anchors req2 host remove |
	host := 'http://localhost:8080/phlog'.
	self addNews.
	req := self get: host.
	self assert: (self nbCard: req) equals: 1.
	anchors := (req findAllTagsByClass: 'card') first findAllTags: 'a'.
	remove := (anchors select: [ :ancho | (ancho findString: 'remove') notNil ]) at: 1.
	req2 := self get: host , (remove attributeAt: 'href').
	self assert: (req2 findAllTagsByClass: 'card') size equals: 0