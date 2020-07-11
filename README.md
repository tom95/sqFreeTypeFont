# FreeType Fonts in Squeak

This adds a basic new font type to Squeak that is rendered via FreeType.
Subpixel AA included!

Note that the project has not been used much, so things may explode, leaving you locked out of your system as text can no longer be displayed.

### Examples
For testing, open a Morph with an external font (adjust the path to match your system):
```smalltalk
TextMorph new contents: 'Hello world!'; font: (FreeTypeFont file: '/usr/share/fonts/truetype/ubuntu/UbuntuMono-R.ttf' pointSize: 11); openInHand.
```

Change your system font:
```smalltalk
Preferences setSystemFontTo: (FreeTypeFont file: '/usr/share/fonts/truetype/ubuntu/UbuntuMono-R.ttf' pointSize: 11)
```

### TODO
- [ ] Font Weights
- [ ] Locate Font by name rather than path
- [ ] Fallback Fonts
- [ ] Stretch: Harfbuzz Integration
