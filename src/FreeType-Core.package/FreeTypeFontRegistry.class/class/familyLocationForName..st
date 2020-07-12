as yet unclassified
familyLocationForName: aString

	 ^ self fontFamilyLocations at: aString
		ifPresent: [:location | location valid ifFalse: [self checkFamilyLocationCache]. location]
		ifAbsentPut: [ | location |
			location := FreeTypeFontFamilyLocation new.
	
			self allFontsDo: [:font :filename |
				font familyName = aString ifTrue: [ | styleInfo |
					styleInfo := TextStyle decodeStyleName: font subfamilyName.
					styleInfo first = 0
						ifTrue: [location baseFont: filename]
						ifFalse: [location derivativeFonts at: styleInfo first put: filename]]].
			
			location]