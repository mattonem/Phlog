grammar
document
	^  ((textGroup/image) separatedBy: #newline asParser plus) withoutSeparators ==> [ :node | PMdDocument from: node ]