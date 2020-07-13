accessing
asFormGrayScale

	| form buffer pitch |
	form := FTCachedForm extent: self width @ self rows depth: 32.
	buffer := self buffer.
	pitch := self pitch.
	
	0 to: self width do: [:x |
		0 to: self rows do: [:y |
			form pixelValueAt: x @ y put: (((buffer at: y * pitch + x + 1) bitShift: 24) bitOr: 16rffffff)]].
	^ form