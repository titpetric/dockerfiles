NAME := "titpetric/nginx"

build:
	-docker rmi -f $(NAME)
	docker build --rm --no-cache=true -t $(NAME) --build-arg GITVERSION=${GITVERSION} .
	docker push $(NAME)

.PHONY: build
