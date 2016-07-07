#/bin/sh

docker rm -f alfresco

docker run \
  -d \
  -m=4G \
  -p 8080:8080 \
  --name alfresco \
  -e DB_DRIVER=org.postgresql.Driver \
  -e DB_JDBC_URL=jdbc:postgresql://t450:5432/alfresco \
  -e DB_NAME=alfresco \
  -e DB_USERNAME=postgres \
  -e DB_PASSWORD=pass \
  -v /var/docker-volumes/alfresco/contentstore:/opt/alfresco/alf_data/contentstore \
  -v /var/docker-volumes/alfresco/contentstore.deleted:/opt/alfresco/alf_data/contentstore.deleted \
  -v /var/docker-volumes/alfresco/solr/workspace/SpacesStore:/opt/alfresco/alf_data/solr/workspace/SpacesStore \
  -v /var/docker-volumes/alfresco/solr/archive/SpacesStore:/opt/alfresco/alf_data/solr/archive/SpacesStore \
  cheeven/alfresco:4.2.c
