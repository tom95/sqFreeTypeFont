as yet unclassified
at: aCharacter ifAbsentPut: aBlock

	| codepoint |
	codepoint := aCharacter asInteger.
	codepoint < 128 ifTrue: [
		^ (fastGlyphCache at: codepoint + 1) ifNil: [fastGlyphCache at: codepoint + 1 put: aBlock value]].
	
	^ glyphCache at: codepoint ifAbsentPut: aBlock