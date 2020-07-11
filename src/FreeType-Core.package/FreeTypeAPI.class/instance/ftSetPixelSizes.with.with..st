as yet unclassified
ftSetPixelSizes: face with: pixelWidth with: pixelHeight
	<apicall: FTError 'FT_Set_Pixel_Sizes' (FTFace ulong ulong)>
	^ self externalCallFailed