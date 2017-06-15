NAME := "titpetric/nginx"

build:
	docker build --rm --no-cache=true -t $(NAME) --build-arg GITVERSION=${GITVERSION} .
	docker push $(NAME)

.PHONY: build
