ALL: MetaCom.png MetaCom-square.png MetaCom.ico

# PNG
MetaCom.png: MetaCom.svg
	inkscape --without-gui --file=MetaCom.svg --export-png=MetaCom.png --export-dpi=150

# Squaree PNG with white background 
# suitable as avatar

MetaCom-square.png: MetaCom.png
	convert -background none MetaCom.png -gravity center -extent 304x304 MetaCom-square.png

MetaCom.ico: MetaCom.png
	convert -background white MetaCom.png -gravity center -extent 304x304 -resize 48x48 MetaCom.ico


