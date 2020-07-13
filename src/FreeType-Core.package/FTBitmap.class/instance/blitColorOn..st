accessing
blitColorOn: aDisplayContext

	| form buffer pitch |
	form := Form extent: self width // 3 @ self rows depth: 32.
	buffer := self buffer.
	pitch := self pitch.
	
	0 to: self width // 3 do: [:x |
		0 to: self rows do: [:y | | r g b a |
			r := (buffer at: y * pitch + (x * 3) + 1).
			g := (buffer at: y * pitch + (x * 3) + 2).
			b := (buffer at: y * pitch + (x * 3) + 3).
			
			a := r + g + b = (16rff * 3) ifTrue: [16r0] ifFalse: [16rff << 24 bitOr: (r << 16 bitOr: (g << 8 bitOr: b))].
			form pixelValueAt: x @ y put: a]].
	
	^ form