as yet unclassified
addBold: aPath

	derivativeFonts ifNil: [derivativeFonts := Array new: 32].
	derivativeFonts at: TextEmphasis bold emphasisCode put: ((FreeTypeFont file: aPath pointSize: self pointSize)
		emphasis: TextEmphasis bold emphasisCode)