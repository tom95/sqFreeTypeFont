as yet unclassified
emphasized: aCode

	aCode = 0 ifTrue: [^ self].
	derivativeFonts ifNil: [derivativeFonts := Array new: 32].
	
	^ (derivativeFonts at: aCode) ifNil: [
		derivativeFonts at: aCode put: (FreeTypeFont named: 'Open Sans' pointSize: 12 emphasis: aCode)]