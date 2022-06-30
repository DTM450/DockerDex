#!/usr/bin/env bash
docker images --format "{{.Repository}}:{{.Tag}}" | for line in $(grep ":latest"); do docker pull $line | grep "Status: " >> /var/log/dockerdex.log; done
