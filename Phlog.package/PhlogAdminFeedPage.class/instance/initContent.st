rendering
initContent
	feed updateContentCollection.
	content := PhlogAdminFeedReader new
		newsCollection: feed;
		selectionCallback: self;
		feedsPerPage: (self application preferenceAt: #feedsPerPage)