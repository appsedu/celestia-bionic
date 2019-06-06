#!/bin/bash

if [ ! -f deb_package/usr/bin/celestia ]; then
	wget "https://drive.google.com/uc?id=1nwivlYiqJ7CnfrN3ReZHgXeYG9Tulw3n&export=download" -O celestia.tar.xz
	tar -xJf celestia.tar.xz
	rm -rf deb_package/usr/
	mv usr/ deb_package/
fi

dpkg-deb -b deb_package .
