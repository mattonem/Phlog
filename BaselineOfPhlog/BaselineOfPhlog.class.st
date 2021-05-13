Class {
	#name : #BaselineOfPhlog,
	#superclass : #BaselineOf,
	#category : #BaselineOfPhlog
}

{ #category : #baselines }
BaselineOfPhlog >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'Seaside3'
				with: [ spec
						repository: 'github://SeasideSt/Seaside:master/repository';
						loads: #default ].
			spec
				baseline: 'PetitParser'
				with: [ spec
						repository: 'github://moosetechnology/PetitParser/src';
						loads: #Core ].
			spec
				baseline: 'NeoJSON'
				with: [ spec
						repository: 'github://svenvc/NeoJSON/repository';
						loads: #core ].
			spec
				baseline: 'Bootstrap'
				with: [ spec
						repository: 'github://astares/Seaside-Bootstrap:master/src';
						loads: #Core ].
			spec
				baseline: 'FSFileLibrary'
				with: [ spec
						repository: 'github://mattonem/SeasideFileLibraries:master/src';
						loads: #default ].
			spec
				package: 'Phlog'
					with:
						[ spec requires: #('Seaside3' 'PetitParser' 'FSFileLibrary' 'NeoJSON' 'Bootstrap') ];
				package: 'Phlog-Tests' with: [ spec requires: #('Phlog') ];
				package: 'PhlogJs' with: [ spec requires: #('Phlog') ];
				group: 'default' with: #('core' 'tests');
				group: 'core' with: #('Phlog' 'PhlogJs');
				group: 'tests' with: #('Phlog' 'PhlogJs' 'Phlog-Tests');
				yourself ]
]
