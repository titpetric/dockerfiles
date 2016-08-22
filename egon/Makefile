build:
	-docker rmi -f titpetric/egon
	docker build --rm --no-cache=true -t titpetric/egon .
	docker push titpetric/egon

.PHONY: build