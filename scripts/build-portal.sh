#!/bin/sh

# apollo portal db info
apollo_portal_db_url=jdbc:mysql://192.168.10.223:3306/ApolloPortalDB?characterEncoding=utf8
apollo_portal_db_username=root
apollo_portal_db_password=a1t39dsQYx6

# meta server url
dev_meta=http://192.168.10.239:26141
fat_meta=http://192.168.10.239:26143
pro_meta=http://192.168.10.239:26145

META_SERVERS_OPTS="-Ddev_meta=$dev_meta -Dfat_meta=$fat_meta -Duat_meta=$uat_meta -Dpro_meta=$pro_meta"

# =============== Please do not modify the following content =============== #
cd ..

echo "==== starting to build portal ===="

mvn clean package -DskipTests -pl apollo-portal -am -Dapollo_profile=zmaxfilm -Dspring_datasource_url=$apollo_portal_db_url -Dspring_datasource_username=$apollo_portal_db_username -Dspring_datasource_password=$apollo_portal_db_password $META_SERVERS_OPTS

echo "==== building portal finished ===="



