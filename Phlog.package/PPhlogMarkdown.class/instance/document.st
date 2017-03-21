grammar
document
	^  ((image/carousel/textGroup) separatedBy: #newline asParser plus) withoutSeparators ==> [ :node | PMdDocument from: node ]