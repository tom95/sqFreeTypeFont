as yet unclassified
emphasized: aCode

	aCode = 0 ifTrue: [^ self].
	derivativeFonts ifNil: [derivativeFonts := Array new: 32].
	
	^ (derivativeFonts at: aCode) ifNil: [ | font |
		[
			font := FreeTypeFont named: self familyName pointSize: self pointSize emphasis: aCode.
			font assureLoaded.
			derivativeFonts at: aCode put: font]
			on: FTNotFoundError, FTAPIError
			do: [:e |
				derivativeFonts at: aCode put: self.
				e signal]]