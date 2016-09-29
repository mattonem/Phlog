grammar
document
	^  ((textGroup/image) separatedBy: #newline asParser ) withoutSeparators ==> [ :node | PMdDocument from: node ]