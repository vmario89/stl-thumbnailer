#/bin/bash

#install openscad
sudo dnf install openscad

#copy thumbnail generators
sudo cp -rf stl_thumb.py /usr/bin/
sudo chmod a+x /usr/bin/stl_thumb.py
sudo cp -rf scad_thumb.py /usr/bin/
sudo chmod a+x /usr/bin/scad_thumb.py

#copy executors
sudo cp -rf stl.thumbnailer /usr/share/thumbnailers/
sudo cp -rf scad.thumbnailer /usr/share/thumbnailers/

#copy mime files. By installing OpenSCAD, an openscad.xml is automatically put in the correct target path
sudo cp -rf stl.xml /usr/share/mime/packages/
sudo cp -rf scad.xml /usr/share/mime/packages/

#update mime database
sudo update-mime-database /usr/share/mime/

#clear thumbnails cache
rm -rf ~/.cache/thumbnails/*

