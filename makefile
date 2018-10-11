
SHELL:=/bin/bash

CONSUL_MASTER_ROOT_TOKEN='uuidgen'

all:
	./script.sh
	
stop:
	docker-compose down

nothing: