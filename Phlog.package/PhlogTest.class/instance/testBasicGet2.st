as yet unclassified
testBasicGet2
	| req anchors req2 host remove |
	host := 'http://localhost:8443/admin/phlog'.
	self addNews.
	req := self get: host.
	self assert: (self nbCard: req) equals: 1.
	anchors := (req findAllTagsByClass: 'card') first findAllTags: 'a'.
	remove := (anchors select: [ :ancho | (ancho findString: 'view') notNil ]) at: 1.
	req := self get: host , '/' , ((remove attributeAt: 'href') findTokens: '?') first.
	self assert: (self nbCard: req) equals: 1.
	req := self get: host.
	anchors := (req findAllTagsByClass: 'card') first findAllTags: 'a'.
	remove := (anchors select: [ :ancho | (ancho findString: 'remove') notNil ]) at: 1.
	req2 := self get: host , (remove attributeAt: 'href').
	self assert: (req2 findAllTagsByClass: 'card') size equals: 0