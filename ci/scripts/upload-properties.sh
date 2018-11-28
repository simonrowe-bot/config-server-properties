#!/bin/bash
for file in *.properties;
do
  echo "uploading file $file"
  curl -i -H 'Content-Type: text/plain' \
       -XPOST -u ${CONFIG_SERVER_USERNAME}:${CONFIG_SERVER_PASSWORD} \
       $CONFIG_SERVER_URI/properties/upload/$file \
       --data-binary @$file
done