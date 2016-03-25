.PHONY: main build_ubuntu build_centos clean

main: build_centos

build_ubuntu:
	docker build  -f 12-multi-galaxy/test/Dockerfile  -t wordpress12   12-multi-galaxy

build_centos:
	docker build  -f 12-multi-galaxy/test/Dockerfile.centos  -t wordpress12-centos  12-multi-galaxy
	docker run -d --name wordpress12-centos   wordpress12-centos
	sleep 60
	IP=$(docker inspect --format '{{ .NetworkSettings.IPAddress }}' wordpress12-centos) ; echo http://$IP:80/ > url
	cat url  |  xargs -t -n 1 curl -v --retry 5 --retry-max-time 120 -o result-wordpress12-centos
	grep '<title>ANSIBLE_TEST' result-wordpress12-centos

clean:
	rm result-wordpress
	rm url

