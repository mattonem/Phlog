as yet unclassified
testBasicGet4
	| req anchors edit req2 host |
	host := 'http://admin:password@localhost:8443/admin/News'.
	self addNews.
	req := self get: host.
	anchors := ((req findAllTagsByClass: 'card') at: 1) findAllTags: 'a'.
	edit := (anchors select: [ :ancho | (ancho findString: 'edit') notNil ]) at: 1.
	req2 := self get: host , (edit attributeAt: 'href').
	self assert: (self nbCard: req2) equals: 1