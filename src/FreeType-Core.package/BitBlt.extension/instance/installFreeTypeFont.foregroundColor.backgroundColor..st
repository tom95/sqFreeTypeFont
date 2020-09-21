*FreeType-Core
installFreeTypeFont: aFont foregroundColor: foregroundColor backgroundColor: backgroundColor

	foregroundColor isTranslucent
		ifTrue: [
			self combinationRule: Form blendAlphaScaled.
			colorMap := self colorConvertingMap: foregroundColor from: 32 to: destForm depth keepSubPixelAA: false]
		ifFalse: [
			self combinationRule: Form rgbMul.
			colorMap := aFont subpixel
				ifTrue: [self colorConvertingMap: foregroundColor from: 32 to: destForm depth keepSubPixelAA: true]
				ifFalse: [nil]]