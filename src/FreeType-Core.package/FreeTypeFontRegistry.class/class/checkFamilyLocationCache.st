as yet unclassified
checkFamilyLocationCache

	self fontFamilyLocations valuesDo: [:location |
		location check ifFalse: [^ self rebuildFamilyLocationCache]]