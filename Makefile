IMAGE_NAME := ib-gateway
CONTAINER_NAME := ib-gateway
PORT := 5000

.PHONY: build
build:
	docker build -t $(IMAGE_NAME) .

.PHONY: run
run:
	docker run -d -p $(PORT):$(PORT) --name $(CONTAINER_NAME) $(IMAGE_NAME)

.PHONY: stop
stop:
	docker stop $(CONTAINER_NAME)

.PHONY: clean
clean:
	docker rmi $(IMAGE_NAME)
	docker rm -f $(CONTAINER_NAME)

.PHONY: logs
logs:
	docker logs -f $(CONTAINER_NAME)