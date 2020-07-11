as yet unclassified
checkError: anErrorCode

	anErrorCode = 0 ifFalse: [
		self error: 'freetype op failed']