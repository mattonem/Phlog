as yet unclassified
initContent
	feed updateContentCollection.
	content := PhlogAdminFeedReader new
		newsCollection: feed;
		selectionCallback: self