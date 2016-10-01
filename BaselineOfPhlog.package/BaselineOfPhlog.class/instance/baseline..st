as yet unclassified
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				project: 'Seaside3'
				with: [ spec 
					className: 'ConfigurationOfSeaside3';
					repository: 'http://www.smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main' ;
					versionString: '3.1.3' ].
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
				package: 'PhlogJs';
				yourself ]
