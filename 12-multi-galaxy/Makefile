.PHONY: main build_ubuntu build_centos clean

main: build_centos

build_ubuntu:
	docker build  -f ./test/Dockerfile        -t wordpress12 .

build_centos:
	docker build  -f ./test/Dockerfile.centos	-t wordpress12-centos .

clean:
	rm result-wordpress
	rm url

