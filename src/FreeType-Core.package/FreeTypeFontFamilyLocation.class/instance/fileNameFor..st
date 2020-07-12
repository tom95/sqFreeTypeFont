as yet unclassified
fileNameFor: anEmphasis

	anEmphasis = 0 ifTrue: [^ self baseFont].
	
	" emphases are OR'ed together up to 2r11111, so we start looking at the most specific font and work
	backwards by removing specifity to find the first font that has the most of the bits set that we want "
	0 to: 4 do: [:index |
		(derivativeFonts at: (anEmphasis bitAnd: (2r11111 bitShift: index negated))) ifNotNil: [:f | ^ f]].
	
	^ self baseFont