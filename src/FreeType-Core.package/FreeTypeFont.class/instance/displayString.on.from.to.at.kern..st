as yet unclassified
displayString: aString on: aDisplayContext from: startIndex to: stopIndex at: aPoint kern: kernDelta

	| x y prevColorMap |
	x := aPoint x.
	y := aPoint y + self ascent.
	
	aString from: startIndex to: stopIndex do: [:char | | form |
		form := self formForCharacter: char.
		
		(form width > 0 and: [form height > 0]) ifTrue: [ | origin |
			"bitmapGlyph bitmap blitColored: aDisplayContext lastFontForegroundColor on: aDisplayContext at: (x + bitmapGlyph left) @ (aPoint y - bitmapGlyph top + ascent)."
			
			origin := x @ y + (form offset x @ form offset y negated).
			
			self subpixel ifTrue: [
				" for subpixel-AA, we do two passes:
				our form is all white with black text (and rgb-subpixels around its edges)
				so, we first rgbMul such that we get a black stencil of our final font essentially and
				then we rgbAdd our color on top, with the help of the colormap that maps our prepared form to the color we need.
				To see this happen live, try commenting out the second image: call "
				prevColorMap := aDisplayContext colorMap.
				aDisplayContext
					fillPattern: nil;
					colorMap: nil.
				
				aDisplayContext
					image: form
					at: origin
					sourceRect: form boundingBox
					rule: Form rgbMul.
				
				aDisplayContext colorMap: prevColorMap.
				
				aDisplayContext
					image: form
					at: origin
					sourceRect: form boundingBox
					rule: 20. "rgbAdd"]
			ifFalse: [
				aDisplayContext
					image: form
					at: origin
					sourceRect: form boundingBox
					rule: Form blend]].
		
		x := x + form advance x].
	^ x