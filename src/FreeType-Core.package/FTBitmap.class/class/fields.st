as yet unclassified
fields

	^ #(
		(rows ulong)
		(width ulong)
		(pitch long)
		(buffer 'byte*')
		(numGrays ushort)
		(pixelMode byte)
		(paletteMode byte)
		(palette 'void*')
	)