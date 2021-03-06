#!/bin/sh
echo "MODULES =" > modules.ddoc ;grep -h -e "^module" src/* -r | sort -u | sed 's/;//' | sed 's/\r//' |  sed 's/module \(.*\)$/\t$(MODULE \1)/' >> modules.ddoc
grep -h -e "^module" srcgl/* -r | sort -u | sed 's/;//' | sed 's/\r//' |  sed 's/module \(.*\)$/\t$(MODULE \1)/' >> modules.ddoc

dmd -o- -D -Dddocs  modules.ddoc docs/candy.ddoc \
	src/gtk/*  src/gtkc/* src/glib/* src/gio/* src/gdk/* \
	src/glade/* src/gobject/* src/gthread/* src/atk/* \
	src/pango/* src/cairo/* src/gdkpixbuf/* \
	srcgl/glgdk/*  srcgl/glgtk/*  srcgl/gtkglc/* \
	srcgda/gda/*  srcgda/gdac/* \
	srcsv/gsv/*  srcsv/gsvc/* -op


