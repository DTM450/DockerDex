docker images --format "{{.Repository}}:{{.Tag}}" | Select-String -Pattern ":latest" | ForEach {docker pull $_.line}
pause