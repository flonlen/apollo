#!/bin/sh

# meta server url
dev_meta=http://192.168.10.239:26140
fat_meta=http://192.168.10.239:26140
uat_meta=http://192.168.10.239:26140
pro_meta=http://192.168.10.239:26140

META_SERVERS_OPTS="-Ddev_meta=$dev_meta -Dfat_meta=$fat_meta -Duat_meta=$uat_meta -Dpro_meta=$pro_meta"

# =============== Please do not modify the following content =============== #
cd ..

echo "==== starting to build client ===="
mvn clean install -DskipTests -pl apollo-client -am $META_SERVERS_OPTS
echo "==== building client finished ===="



