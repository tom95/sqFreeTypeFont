as yet unclassified
emphasized: aCode

	aCode = 0 ifTrue: [^ self].
	derivativeFonts ifNil: [derivativeFonts := Array new: 32].
	
	^ (derivativeFonts at: aCode) ifNil: [ | font |
		font := FreeTypeFont named: self familyName pointSize: self pointSize emphasis: aCode.
		derivativeFonts at: aCode put: font]