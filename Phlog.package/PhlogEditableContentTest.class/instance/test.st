as yet unclassified
test
	| file1 file2 |
	file1 := PhlogEditableContent new
		storingDirectory: FileSystem workingDirectory / 'test';
		text: 'blabla'.
	file2 := PhlogEditableContent
		fromFile: FileSystem workingDirectory / 'test' / file1 key asString.
	self assert: file2 equals: file1.
	self assert: file2 text equals: file1 text