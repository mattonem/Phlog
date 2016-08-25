rendering
initContent
	newsCollection updateContentCollection.
	content := PhlogFeedReader new
		newsCollection: newsCollection;
		selectionCallback: self