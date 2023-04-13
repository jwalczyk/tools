for i in $(docker ps -a |awk '!/^C/ {print $1}'); do docker rm -f $i; done
