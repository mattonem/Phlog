as yet unclassified
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [
            spec
            	baseline:'Seaside3'
            	with: [spec repository: 'github://SeasideSt/Seaside:master/repository'].
            spec project: 'Soup' with: #'stable';
            spec
                package: 'Phlog';
                yourself. 
				]
