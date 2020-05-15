ALL: IPB.png IPB-square.png IPB.ico

# PNG
IPB.png: IPB2.svg
	inkscape --without-gui --file=IPB1.svg --export-png=IPB.png --export-dpi=150

# Squaree PNG with white background
# suitable as avatar

IPB-square.png: IPB.png
	convert -background none IPB.png -gravity center -extent 304x304 IPB-square.png

IPB.ico: IPB.png
	convert -background white IPB.png -gravity center -extent 304x304 -resize 48x48 IPB.ico
