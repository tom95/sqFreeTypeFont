accessing
asFormColor

	| form buffer pitch |
	form := FTCachedForm extent: self width // 3 @ self rows depth: 32.
	buffer := self buffer.
	pitch := self pitch.
	
	0 to: self width // 3 do: [:x |
		0 to: self rows do: [:y | | r g b a |
			r := 16rff - (buffer at: y * pitch + (x * 3) + 1).
			g := 16rff - (buffer at: y * pitch + (x * 3) + 2).
			b := 16rff - (buffer at: y * pitch + (x * 3) + 3).
			a := r + g + b = (16rff * 3) ifTrue: [16rffffffff] ifFalse: [16rff << 24 bitOr: (r << 16 bitOr: (g << 8 bitOr: b))].
			form pixelValueAt: x @ y put: a]].
	^ form