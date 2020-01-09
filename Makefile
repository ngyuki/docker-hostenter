
all: build

.PHONY: build
build:
	docker build -t ngyuki/hostenter .

.PHONY: push
push:
	docker push ngyuki/hostenter

.PHONY: run
run:
	docker run -it --rm --privileged --pid=host ngyuki/hostenter
