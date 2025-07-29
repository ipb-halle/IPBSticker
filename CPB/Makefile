ALL: BASDA.png BASDA-square.png BASDA.ico CPB.png CPB-square.png CPB.ico

# PNG
BASDA.png: BASDA.svg
	inkscape --without-gui --file=BASDA.svg --export-png=BASDA.png --export-dpi=150

# Squaree PNG with white background 
# suitable as avatar

BASDA-square.png: BASDA.png
	convert -background none BASDA.png -gravity center -extent 304x304 BASDA-square.png

BASDA.ico: BASDA.png
	convert -background white BASDA.png -gravity center -extent 304x304 -resize 48x48 BASDA.ico


# PNG
CPB.png: CPB.svg
	inkscape --without-gui --file=CPB.svg --export-png=CPB.png --export-dpi=150

# Squaree PNG with white background 
# suitable as avatar

CPB-square.png: CPB.png
	convert -background none CPB.png -gravity center -extent 304x304 CPB-square.png

CPB.ico: CPB.png
	convert -background white CPB.png -gravity center -extent 304x304 -resize 48x48 CPB.ico


