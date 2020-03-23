ALL: BASDA.png BASDA-square.png BASDA.ico

# PNG
BASDA.png: BASDA.svg
	inkscape --without-gui --file=BASDA.svg --export-png=BASDA.png --export-dpi=150

# Squaree PNG with white background 
# suitable as avatar

BASDA-square.png: BASDA.png
	convert -background none BASDA.png -gravity center -extent 304x304 BASDA-square.png

BASDA.ico: BASDA.png
	convert -background white BASDA.png -gravity center -extent 304x304 -resize 48x48 BASDA.ico


