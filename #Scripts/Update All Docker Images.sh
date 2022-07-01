#!/usr/bin/env bash
docker images --format "{{.Repository}}:{{.Tag}}" | for line in $(grep ":latest"); do docker pull $line | grep "Status: " | sudo tee -a /var/log/dockerdex.log; done
