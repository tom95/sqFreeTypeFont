as yet unclassified
emphasized: aCode

	aCode = 0 ifTrue: [^ self].
	
	self flag: #todo. " switch to more general code below, but for now we do not support creating underlines etc "
	(aCode bitAnd: 1) ~= 0 ifTrue: [^ derivativeFonts at: 1].
	(aCode bitAnd: 2) ~= 0 ifTrue: [^ derivativeFonts at: 2].
	
	^ (derivativeFonts ifNotNil: [:f | f at: (aCode min: derivativeFonts size)])
		ifNil: [self]