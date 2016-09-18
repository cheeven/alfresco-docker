# Alfresco in Docker

Build files to set up and run Alfresco Community Servers in a Docker environment.

I only work on 3 separate versions as those are used in my current company.

## Pre-requisite

* Docker toolbox if you are working on a development machine.
* Docker machine configured with over 4GB memory and 60GB disk space.
* A standalone running Postgres Database server.

## Running

It is possible to ingest Tomcat runtime configuration during Docker run, with which
you can customise your Alfresco server.

See `run.sh` files under each sub folders.

## References

* Alfresco Wiki - https://wiki.alfresco.com/wiki/Category:Community_Edition
* Alfresco Tip: Unattended installation with one command - http://blyx.com/2014/02/20/alfresco-tip-unattended-installation-with-one-command/

[![](https://images.microbadger.com/badges/image/cheeven/alfresco-docker.svg)](https://microbadger.com/images/cheeven/alfresco-docker "Get your own image badge on microbadger.com")
