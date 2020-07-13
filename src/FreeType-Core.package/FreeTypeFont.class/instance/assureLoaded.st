as yet unclassified
assureLoaded

	face ifNil: [ | name |
		name := self filename.
		name ifNil: [self error: 'The requested font could not be found on your system'].
		self loadFont: name size: pointSize]