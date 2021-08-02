# stl-thumbnailer
Shows thumbnails of .stl and .scad files in Nautilus file browser. The sources are based on [linux nautilus stl thumbnailer :)](http://www.thingiverse.com/thing:258653)

![Example: STL preview of folder](STL-thumbnailer_screenshot.png)

## Installation (Fedora 34)

This project use [OpenSCAD](http://www.openscad.org/) for thumbnails preview

### Install stl-thumbnailer

clone from repository

	#as default user, not root
	cd ~
    git clone https://github.com/vmario89/stl-thumbnailer.git
    cd stl-thumbnailer/

	./install.sh

Rrefresh (F5 or crtl-r) Nautilus showing a folder containing some stl files. Now the STL thumbnails should show-up. If not, you can try:

  - close Nautilus :

        killall nautilus

  - and start it again
  - in last hope, you can try to log out and login to the desktop

### Testing thumbnail generator
	cd ~/stl-thumbnailer
	python3 stl_thumb.py "~65mm.stl" 65mm.png 256 #testing stl
	eog 65mm.png #view the generated thumb. should show the correct model file. If not: check out the temporarily generated scad file in tmp dir

	python3 scad_thumb.py "logo.scad" logo.png 256 #testing scad
	eog logo.png #view the generated thumb. should show the correct model file. If not: check out the temporarily generated scad file in tmp dir
