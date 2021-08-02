#/bin/bash

#install openscad
sudo dnf install openscad

sudo cp -rf stl_thumb.py /usr/local/bin/
sudo chmod a+x /usr/local/bin/stl_thumb.py
sudo cp -rf stl.thumbnailer /usr/share/thumbnailers/
sudo cp -rf openscad.thumbnailer /usr/share/thumbnailers/

#copy mime files. By installing OpenSCAD, an openscad.xml is automatically put in the correct target path
sudo cp -rf stl.xml /usr/share/mime/packages/

#update mime database
sudo update-mime-database /usr/share/mime/

#clear thumbnails cache
rm -rf ~/.cache/thumbnails/*

