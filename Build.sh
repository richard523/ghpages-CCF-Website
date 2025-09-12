#!/bin/bash
mkdocs build


echo "------------------------"
echo "Copying postprocessing files (like .htaccess, etc) to server dir)"
echo "------------------------"

cp -r PostprocessingFiles/* site/

echo "Done!"