accessing
neoJsonMapping: mapper
	"For inheritance mapping to work, the schema/classname must be self,
	but the instance variables have to be enumerated manually per class"

	mapper
		for: self
			do: [ :mapping | 
					mapping
						mapProperty: #id getter: [ :object | object id ] setter: [ :object :value | object id: value ];
						mapProperty: #text getter: [ :object | object text ] setter: [ :object :value | object text: value ];
						mapProperty: #order getter: [ :object | object order ] setter: [ :object :value | object order: value ];
						mapProperty: #creationTime
							getter: [ :object | object creationTime ]
							setter: [ :object :value | object creationTime: (DateAndTime fromUnixTime: value) ] ];
		for: DateAndTime customDo: [ :mapping | mapping encoder: [ :time | time asUnixTime ] ]