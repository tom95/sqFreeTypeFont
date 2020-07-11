as yet unclassified
convert16x16: aNumber

	^ aNumber >> 16 + (aNumber bitAnd: 16rffff)