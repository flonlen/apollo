#!/bin/sh

# apollo config db info
apollo_config_db_url=jdbc:mysql://192.168.10.223:3306/ApolloConfigFatDB?characterEncoding=utf8
apollo_config_db_username=root
apollo_config_db_password=a1t39dsQYx6

# =============== Please do not modify the following content =============== #
cd ..

# package config-service and admin-service
echo "==== starting to build config-service and admin-service ===="

mvn clean package -DskipTests -pl apollo-configservice,apollo-adminservice -am -Dapollo_profile=zmaxfilm -Dspring_datasource_url=$apollo_config_db_url -Dspring_datasource_username=$apollo_config_db_username -Dspring_datasource_password=$apollo_config_db_password

echo "==== building config-service and admin-service finished ===="



