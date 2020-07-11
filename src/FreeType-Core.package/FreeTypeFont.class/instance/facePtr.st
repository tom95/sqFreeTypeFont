as yet unclassified
facePtr

	face ifNil: [self loadFont: filename size: pointSize].
	
	^ face