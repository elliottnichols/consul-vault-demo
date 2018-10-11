
SHELL := /bin/bash

all:
	source script.sh && build_me_dis
	
stop:
	docker-compose down

nothing:
