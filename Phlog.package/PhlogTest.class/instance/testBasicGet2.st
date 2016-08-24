as yet unclassified
testBasicGet2
	|req3 req anchors edit el req2 host form textArea data text req4 title |
	host := 'http://localhost:8080/phlog'.
	req := self get: host.
	anchors := ((req findAllTagsByClass: 'card') at: 1) findAllTags: 'a'.
	edit := (anchors
		select: [ :ancho | (ancho findString: 'edit') notNil ]) at: 1.
	req2 := self get: (host , (edit attributeAt: 'href')).
	self assert: (el := (req2 findAllTagsByClass: 'card')) size equals: 1.
	self assert: ( el := el first findAllTags: 'form') size equals: 1.
	form := el first.
	self assert: (el := el first findAllTags: 'textarea') size equals: 1.
	textArea := el first .
	title := 'TestText'. body := 'Ceci est un test'.
	text := title , Character cr asString , body .
	
	data :=  (textArea attributeAt: #name), '=' , text. 
	req3 := ZnEasy post: (host, (form attributeAt: #action)) data: (ZnEntity text: data).
	self assert: req3 isSuccess.
	"req4 := self get: host, '/1'.
	self assert: (el := (req4 findAllTagsByClass: 'card')) size equals: 1.
	self assert: (el first findAllStrings: title) size equals: 1.
	self assert: (el first findAllStrings: body) size equals: 1"