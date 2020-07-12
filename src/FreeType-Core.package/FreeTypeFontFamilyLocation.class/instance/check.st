as yet unclassified
check

	^ self valid or: [
		(FileDirectory on: self baseFont) exists and: [self derivativeFonts allSatisfy: [:font | font isNil or: [(FileDirectory on: font) exists]]]]