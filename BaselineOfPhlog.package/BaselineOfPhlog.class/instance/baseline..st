as yet unclassified
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'Seaside3'
				with: [ spec repository: 'github://SeasideSt/Seaside:master/repository' ].
			spec project: 'Soup' with: #stable.
			spec
				project: 'Soup'
				with: [ spec
						className: 'ConfigurationOfSoup';
						versionString: #stable;
						repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo40/main' ].
			spec project: 'PetitParser' with: #stable.
			spec
				project: 'PetitParser'
				with: [ spec
						className: 'ConfigurationOfPetitParser';
						versionString: #stable;
						repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo40/main' ].
			spec
				package: 'Phlog';
				yourself ]
