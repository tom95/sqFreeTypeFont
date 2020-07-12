accessing
filename

	^ filename ifNil: [(FreeTypeFontRegistry fileNameFor: self familyName emphasis: self emphasis)]