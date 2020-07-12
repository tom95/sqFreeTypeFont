as yet unclassified
assureLoaded

	face ifNil: [self loadFont: (filename ifNil: [(FreeTypeFontRegistry fileNameFor: self familyName emphasis: self emphasis)]) size: pointSize]