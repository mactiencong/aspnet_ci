#!/bin/bash
cp -rf web-entry-callcenter/target/*.war /home/workspace/gitlab-ci/aspnet_ci/docker/projects/demo-project/artifacts
cp -rf web-advertisementorder-callcenter/target/*.war /home/workspace/gitlab-ci/aspnet_ci/docker/projects/demo-project/artifacts
cp -rf shared-lib/src/main/lib /home/workspace/gitlab-ci/aspnet_ci/docker/projects/demo-project/artifacts/share-lib
cd /home/workspace/gitlab-ci/aspnet_ci/docker/projects/demo-project/
docker build -t ci_tomcat_javaweb -f deploy.Dockerfile .
docker stop java_web && docker rm java_web || echo 1
docker run -td --name java_web -v $(pwd)/logs:/usr/local/tomcat/logs -p 8080:8080 ci_tomcat_javaweb
