IMAGE_NAME = node-dev
CONTAINER_NAME = GetMyStuffTogetherDev

build:
	podman build -t $(IMAGE_NAME) -f Containerfile.dev .

start: build
	podman rm -f $(CONTAINER_NAME) || true
	podman run -d --network=host -v .:/app:z --name $(CONTAINER_NAME) localhost/$(IMAGE_NAME):latest

run-dev: install
	podman exec -it ${CONTAINER_NAME} /bin/bash -c "npm run dev"

run-test:
	podman exec -it ${CONTAINER_NAME} /bin/bash -c "npm run test"

install: start
	podman exec -it ${CONTAINER_NAME} /bin/bash -c "npm install"
