# Variables
IMAGE=africanfuture/gitdocx
TAG=dev
PLATFORMS=linux/amd64,linux/arm64
VERSION=$(shell git describe --tags --abbrev=0 2>/dev/null || echo "latest")

# -----------------------
# 🔨 Linux Targets
# -----------------------

build:
	docker buildx bake

build-dev:
	docker buildx bake \
		--set linux.tags=$(IMAGE):$(TAG) \
		--set linux.output=type=docker

push:
	docker buildx bake \
		--set linux.tags=$(IMAGE):$(TAG) \
		--push

release:
	docker buildx bake \
		--set linux.tags=$(IMAGE):latest \
		--set linux.tags=$(IMAGE):$(VERSION) \
		--push

# -----------------------
# 🪟 Windows Targets (must run on Windows runner)
# -----------------------

build-windows:
	docker build -f Dockerfile.windows -t $(IMAGE):$(TAG)-windows .

push-windows:
	docker tag $(IMAGE):$(TAG)-windows $(IMAGE):windows-latest
	docker tag $(IMAGE):$(TAG)-windows ghcr.io/$(IMAGE):$(TAG)-windows
	docker push $(IMAGE):$(TAG)-windows
	docker push $(IMAGE):windows-latest
	docker push ghcr.io/$(IMAGE):$(TAG)-windows

release-windows: build-windows push-windows
