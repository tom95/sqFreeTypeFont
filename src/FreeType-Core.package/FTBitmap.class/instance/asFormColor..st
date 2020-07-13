accessing
asFormColor: aBoolean

	^ (self width > 0 and: [self rows > 0])
		ifTrue: [aBoolean ifTrue: [self asFormColor] ifFalse: [self asFormGrayScale]]
		ifFalse: [FTCachedForm extent: 0 @ 0 depth: 32]