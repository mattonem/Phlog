rendering
children
	^ super children asOrderedCollection
		add: content;
		add: navbar;
		yourself