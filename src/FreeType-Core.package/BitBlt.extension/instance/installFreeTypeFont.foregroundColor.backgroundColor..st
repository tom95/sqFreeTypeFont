*FreeType-Core
installFreeTypeFont: aFont foregroundColor: foregroundColor backgroundColor: backgroundColor

	colorMap := aFont subpixel
		ifTrue: [self colorConvertingMap: foregroundColor from: 32 to: destForm depth keepSubPixelAA: true]
		ifFalse: [nil]