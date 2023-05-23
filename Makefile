REPO = evertongava
NAME = middleware-nginx
TAG = 1.24.0
IMAGE = $(REPO)/$(NAME):$(TAG)

build:
	docker build --no-cache -t $(IMAGE) .

push:
	docker push $(IMAGE)