# FreeType Fonts in Squeak

This adds a basic new font type to Squeak that is rendered via FreeType.
Subpixel AA included!

Note that the project has not been used much, so things may explode, leaving you locked out of your system as text can no longer be displayed.

Portability is given to a certain extent: fonts render and cache glyphs lazily. Only when a previously unrendered glyph is encountered, the system needs to be able to locate the font files according to the currently configured family name or fail critically. This will be improved in the future to gracefully fall back to other fonts.

### Install
```smalltalk
Metacello new
	baseline: 'FreeTypeFont';
	repository: 'github://tom95/sqFreeTypeFont:master/src';
	load
```

### Examples
For testing, open a Morph with an external font (adjust the path to match your system):
```smalltalk
TextMorph new
	contents: 'Hello world!';
	font: (FreeTypeFont file: '/usr/share/fonts/truetype/ubuntu/UbuntuMono-R.ttf' pointSize: 11);
	openInHand.
```
Or, to resolve a font by name, use:
```smalltalk
TextMorph new
	contents: 'Hello world!';
	font: (FreeTypeFont named: 'Ubuntu Mono' pointSize: 11);
	openInHand.
```

Change the default font in your image:
```smalltalk
FreeTypeFont use: 'Ubuntu' at: 11.
```

Construct the font family manually from individual files:
```smalltalk
font := ((FreeTypeFont file: '/usr/share/fonts/truetype/ubuntu/UbuntuMono-R.ttf' pointSize: 11)
	addBold: '/usr/share/fonts/truetype/ubuntu/UbuntuMono-B.ttf';
	addItalic: '/usr/share/fonts/truetype/ubuntu/UbuntuMono-RI.ttf';
	yourself).
font installSystemWide.
```

### TODO
- [x] Font Decorations (strike-through, underline)
- [x] Locate Font by name rather than path
- [ ] Fallback Fonts
- [ ] Stretch: Harfbuzz Integration
- [ ] Condensed font style
