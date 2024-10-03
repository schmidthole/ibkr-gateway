IMAGE_NAME := ib-gateway
PORT := 5000

.PHONY: build
build:
	docker build -t $(IMAGE_NAME) .

.PHONY: run
run:
	docker run -d -p $(PORT):$(PORT) $(IMAGE_NAME)

.PHONY: stop
stop:
	docker stop $(shell docker ps -q --filter ancestor=$(IMAGE_NAME))

.PHONY: clean
clean:
	docker rmi $(IMAGE_NAME)
	docker rm -f $(shell docker ps -a -q --filter ancestor=$(IMAGE_NAME))

.PHONY: logs
logs:
	docker logs -f $(shell docker ps -a -q --filter ancestor=$(IMAGE_NAME))