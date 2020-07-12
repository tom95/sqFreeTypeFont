as yet unclassified
invalidateFamilyLocationCache

	self fontFamilyLocations valuesDo: [:location | location invalidate]