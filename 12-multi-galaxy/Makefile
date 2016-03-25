primary_node = main.centos

main: status

up:
	vagrant up $(primary_node)

run:
	vagrant provision $(primary_node)

ssh:
	vagrant ssh $(primary_node)
	
status:
	vagrant status

clean:
	vagrant destroy $(primary_node)
	-rm result-wordpress url

push:
	git push origin feature/4th-hw-centos

