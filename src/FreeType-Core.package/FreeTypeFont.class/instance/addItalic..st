as yet unclassified
addItalic: aPath

	derivativeFonts ifNil: [derivativeFonts := Array new: 32].
	derivativeFonts at: TextEmphasis italic emphasisCode put: ((FreeTypeFont file: aPath pointSize: self pointSize)
		emphasis: TextEmphasis italic emphasisCode)