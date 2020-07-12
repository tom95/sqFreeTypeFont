as yet unclassified
glyphCacheAt: aFilenameString size: aNumber character: aCharacter ifAbsentPut: aBlock

	^ (self glyphCache
		at: aFilenameString, ':', aNumber
		ifAbsentPut: [Dictionary new])
			at: aCharacter ifAbsentPut: aBlock