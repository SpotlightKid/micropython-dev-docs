#!/bin/bash

DESTDIR="/storage/emulated/0/Documents/micropython-dev-docs"

make html
mkdir -p "$DESTDIR"
rsync -rv --update _build/html/ "$DESTDIR"
${BROWSER:-xdg-open-url} "file://$DESTDIR/index.html"
