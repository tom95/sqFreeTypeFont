accessing
unpack

	^ FTGlyphRec fromHandle: (ExternalAddress new fromInteger: self value)