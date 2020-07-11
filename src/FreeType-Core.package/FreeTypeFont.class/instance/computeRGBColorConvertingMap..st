as yet unclassified
computeRGBColorConvertingMap: targetColor
	| mask map c bitsPerColor r g b f v |
	bitsPerColor := 5 min: Preferences aaFontsColormapDepth.
	mask := (1 bitShift: bitsPerColor) - 1.
	map := Bitmap new: (1 bitShift: (3 * bitsPerColor)).
	0 to: map size - 1 do: [:i |
		r := (i bitShift: 0 - (2 * bitsPerColor)) bitAnd: mask.
		g := (i bitShift: 0 - bitsPerColor) bitAnd: mask.
		b := (i bitShift: 0) bitAnd: mask.
		f := 1.0 - (r + g + b / 3.0 / mask).
		c :=  Color
				r: 1.0 - (r/mask) * targetColor red
				g: 1.0 - (g/mask) * targetColor green
				b: 1.0 - (b/mask) * targetColor blue
				alpha: f	* targetColor alpha "alpha will be ignored below, in #pixelValueForDepth: if destDepth ~= 32" .
		v := c pixelValueForDepth: 32.
		map at: i + 1 put: v ].
	^ map