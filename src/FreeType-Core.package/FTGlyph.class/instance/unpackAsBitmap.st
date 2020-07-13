accessing
unpackAsBitmap

	^ FTBitmapGlyphRec fromHandle: (ExternalAddress new fromInteger: self value)