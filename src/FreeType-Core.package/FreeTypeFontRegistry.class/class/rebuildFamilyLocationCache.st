as yet unclassified
rebuildFamilyLocationCache

	self fontFamilyLocations valuesDo: [:location | location invalidate].
	
	self allFontsDo: [:font :filename |
		self fontFamilyLocations at: font familyName ifPresent: [:location |  | styleInfo |
			styleInfo := TextStyle decodeStyleName: font subfamilyName.
			styleInfo first = 0
				ifTrue: [location baseFont: filename]
				ifFalse: [location derivativeFonts at: styleInfo first put: filename]]]