rendering
initContent
	feed updateContentCollection.
	content := PhlogFeedReader new
		newsCollection: feed;
		selectionCallback: self;
		feedsPerPage: (self application preferenceAt: #feedsPerPage).