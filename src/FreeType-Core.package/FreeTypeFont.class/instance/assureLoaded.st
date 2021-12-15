as yet unclassified
assureLoaded

	hasError ifTrue: [^ nil].
	
	face ifNil: [ | name |
		name := self filename.
		name ifNil: [
			hasError := true.
			^ FTNotFoundError new signal].
		[self loadFont: name size: pointSize] on: FTAPIError do: [:e |
			hasError := true.
			e signal]]